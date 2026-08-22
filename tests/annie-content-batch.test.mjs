import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

const readJson = async (relativePath) => JSON.parse(await readFile(new URL(relativePath, import.meta.url), "utf8"));

test("Annie editorial batch is public, complete, and merged into shared content", async () => {
  const [cards, publicCards] = await Promise.all([
    readJson("../src/annie-content-sources.json"),
    readJson("../src/content-sources.json"),
  ]);

  assert.equal(cards.length, 35);
  assert.equal(new Set(cards.map((card) => card.id)).size, cards.length);
  assert.equal(new Set(cards.map((card) => card.sourceArticle)).size, 28);
  assert.equal(cards.filter((card) => card.requiresVerification).length, 14);
  assert.ok(cards.every((card) => card.ownerAccountId === null));
  assert.equal(publicCards.length, 191);

  const publicIds = new Set(publicCards.map((card) => card.id));
  assert.ok(cards.every((card) => publicIds.has(card.id)));
  assert.ok(cards.every((card) => {
    const length = card.draft.replace(/\s/g, "").length;
    return length >= 90 && length <= 280;
  }));
});

test("public content migration inserts every reviewed card without an account owner", async () => {
  const migration = await readFile(new URL("../drizzle/0005_public_content_batch.sql", import.meta.url), "utf8");
  assert.equal((migration.match(/INSERT OR IGNORE INTO contents/g) || []).length, 35);
  assert.equal((migration.match(/VALUES \(\s*'annie-\d{4}', NULL,/g) || []).length, 35);
});
