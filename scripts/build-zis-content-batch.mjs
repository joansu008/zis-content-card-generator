import { existsSync, readFileSync, readdirSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const reviewDir = path.join(root, "新增内容", "筛选结果");
const extractedDir = path.join(root, "新增内容", "已解压");
const publicSources = JSON.parse(readFileSync(path.join(root, "src", "content-sources.json"), "utf8"));
const reviewedCards = ["pilot-cards.json", "remaining-cards.json"].flatMap((filename) =>
  JSON.parse(readFileSync(path.join(reviewDir, filename), "utf8")),
);
const batchIds = new Set(reviewedCards.map((card) => card.id));
const existingPublicSources = publicSources.filter((card) => !batchIds.has(card.id));
const cards = reviewedCards.map((card) => ({ ...card, ownerAccountId: null }));

const requiredFields = [
  "id", "category", "angle", "action", "sourceName", "productFit", "priority",
  "requiresVerification", "origin", "sourceArticle", "sourceDate", "sourceFile", "title", "draft", "insight",
];
const ids = new Set();
const titles = new Set(existingPublicSources.map((item) => item.title.trim().toLocaleLowerCase("zh-CN")));
const sourceFiles = new Set();

function collectFiles(directory) {
  if (!existsSync(directory)) return;
  for (const entry of readdirSync(directory, { withFileTypes: true })) {
    const fullPath = path.join(directory, entry.name);
    if (entry.isDirectory()) collectFiles(fullPath);
    else sourceFiles.add(entry.name);
  }
}

collectFiles(extractedDir);

for (const [index, card] of cards.entries()) {
  for (const field of requiredFields) {
    if (card[field] === undefined || card[field] === null || card[field] === "") {
      throw new Error(`Card ${index + 1} (${card.id || "unknown"}) is missing ${field}`);
    }
  }
  if (card.ownerAccountId !== null) throw new Error(`${card.id} must be public`);
  if (ids.has(card.id)) throw new Error(`Duplicate id: ${card.id}`);
  ids.add(card.id);

  const normalizedTitle = card.title.trim().toLocaleLowerCase("zh-CN");
  if (titles.has(normalizedTitle)) throw new Error(`Duplicate title: ${card.title}`);
  titles.add(normalizedTitle);

  if (!Array.isArray(card.productFit) || card.productFit.length === 0) throw new Error(`${card.id} has no productFit`);
  if (!/^\d{4}-\d{2}-\d{2}$/.test(card.sourceDate)) throw new Error(`${card.id} has invalid sourceDate`);
  if (sourceFiles.size > 0 && !sourceFiles.has(card.sourceFile)) throw new Error(`${card.id} source file not found: ${card.sourceFile}`);

  const compactLength = card.draft.replace(/\s/g, "").length;
  if (compactLength < 90 || compactLength > 280) throw new Error(`${card.id} draft length ${compactLength} is outside 90-280`);
}

const ordered = [...cards].sort((a, b) => a.id.localeCompare(b.id));
writeFileSync(path.join(root, "src", "zis-content-sources.json"), `${JSON.stringify(ordered, null, 2)}\n`);
const publicBatch = ordered.map(({ ownerAccountId: _ownerAccountId, ...card }) => card);
writeFileSync(
  path.join(root, "src", "content-sources.json"),
  `${JSON.stringify([...existingPublicSources, ...publicBatch], null, 2)}\n`,
);

function sqlString(value) {
  return `'${String(value ?? "").replaceAll("'", "''")}'`;
}

const createdAt = "2026-08-22T00:00:00.000Z";
const statements = ordered.map((card) => `INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  ${sqlString(card.id)}, NULL, ${sqlString(card.category)}, ${sqlString(card.angle)}, ${sqlString(card.action)},
  ${sqlString(card.sourceName)}, ${sqlString(card.sourceUrl)}, ${sqlString(JSON.stringify(card.productFit))}, ${Number(card.priority)},
  ${card.requiresVerification ? 1 : 0}, ${sqlString(card.origin)}, ${sqlString(card.sourceArticle)}, ${sqlString(card.sourceDate)},
  ${sqlString(card.sourceFile)}, ${sqlString(card.title)}, ${sqlString(card.draft)}, ${sqlString(card.insight)},
  ${sqlString(createdAt)}, ${sqlString(createdAt)}
);`);

const migration = `-- Public editorial batch from the user-provided ZIS WeChat archive.\n-- These cards are shared by every account.\n${statements.join("\n--> statement-breakpoint\n")}\n`;
writeFileSync(path.join(root, "drizzle", "0005_public_content_batch.sql"), migration);

const verificationCount = ordered.filter((item) => item.requiresVerification).length;
const sourceCount = new Set(ordered.map((item) => item.sourceArticle)).size;
console.log(`Built ${ordered.length} public cards from ${sourceCount} ZIS source articles (${verificationCount} require verification).`);
