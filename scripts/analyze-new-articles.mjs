#!/usr/bin/env node

import { createHash } from "node:crypto";
import { mkdirSync, readFileSync, readdirSync, statSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const inputRoot = path.join(root, "新增内容", "已解压");
const outputRoot = path.join(root, "新增内容", "筛选结果");
const existingSources = JSON.parse(readFileSync(path.join(root, "src", "content-sources.json"), "utf8"));

const boilerplateLines = new Set([
  "在小说阅读器读本章",
  "去阅读",
  "在小说阅读器中沉浸阅读",
  "预览时标签不可点",
  "阅读",
  "修改于",
  "微信扫一扫",
  "关注该公众号",
  "知道了",
  "使用小程序",
]);

const promoTitlePattern = /(分享会|欢迎你来|开学啦|招募|专栏更新|分享图片|问题收集|汇报一下未来规划)/;
const categoryRules = [
  ["亲密关系", ["情关", "亲密关系", "婚恋", "择偶", "生育", "不被爱", "伴侣", "关系"]],
  ["自由与商业", ["财富", "金钱", "赚钱", "商业", "上班", "离职", "职场", "自由职业", "产品", "IP", "副业", "公司", "付费"]],
  ["创作表达", ["写作", "创作", "表达", "内容", "公众号", "读者"]],
  ["选择与命运", ["选择", "命运", "改命", "目标", "人生主线", "恐惧", "直觉", "行动"]],
  ["身心觉察", ["情绪", "内耗", "疗愈", "爱自己", "本性", "觉察", "脑科学", "神经", "死亡"]],
  ["认识自己", ["做自己", "成为自己", "我是谁", "热爱", "天命", "主体性", "优绩主义", "自我"]],
];

function walk(directory) {
  const files = [];
  for (const entry of readdirSync(directory, { withFileTypes: true })) {
    const absolute = path.join(directory, entry.name);
    if (entry.isDirectory()) files.push(...walk(absolute));
    else if (entry.isFile() && entry.name.toLowerCase().endsWith(".md")) files.push(absolute);
  }
  return files;
}

function normalizeTitle(value) {
  return String(value || "")
    .replace(/^#+\s*/, "")
    .replace(/^\s*[「『\"“]?/, "")
    .replace(/[」』\"”]?\s*$/, "")
    .replace(/quot/gi, "")
    .replace(/[\s\p{P}\p{S}]+/gu, "")
    .toLowerCase();
}

function cleanMarkdown(raw) {
  const beforeFooter = raw
    .split(/\n\s*预览时标签不可点\s*\n/)[0]
    .split(/\n!\[[^\]]*\]\(https?:\/\/wx\.qlogo\.cn\//i)[0];
  const withoutImages = beforeFooter
    .replace(/!\[[^\]]*\]\([^)]*\)/g, "")
    .replace(/<img\b[^>]*>/gi, "")
    .replace(/\[([^\]]+)\]\([^)]*\)/g, "$1")
    .replace(/https?:\/\/\S+/g, "")
    .replace(/<[^>]+>/g, "");

  const lines = withoutImages.split(/\r?\n/);
  const titleIndex = lines.findIndex((line) => /^#\s+/.test(line.trim()));
  const contentLines = (titleIndex >= 0 ? lines.slice(titleIndex + 1) : lines)
    .map((line) => line.replace(/\u00a0/g, " ").trim())
    .filter((line) => line && !boilerplateLines.has(line))
    .filter((line) => !/^原创\s+/.test(line))
    .filter((line) => !/^_?\d{4}年\d{2}月\d{2}日/.test(line))
    .filter((line) => !/^\*+$/.test(line));

  return contentLines
    .join("\n")
    .replace(/[ \t]+/g, " ")
    .replace(/\n{3,}/g, "\n\n")
    .split(/\n(?:🤎\s*如果你喜欢|🎐\s*咨询服务|🧩\s*微信|🪐\s*来都来了|🍭\s*如果对你有启发|一则直播预告)/)[0]
    .trim();
}

function extractTitle(raw, filename) {
  const heading = raw.match(/^#\s+(.+)$/m)?.[1]?.trim();
  const fallback = filename.replace(/^\[[^\]]+\]/, "").replace(/\.md$/i, "");
  if (heading && !/^(zis 紫苏|紫苏园长)/i.test(heading)) return heading.replace(/\s+/g, " ");
  return fallback;
}

function extractDate(raw, filename) {
  const filenameDate = filename.match(/^\[(\d{4}-\d{2}-\d{2})/)?.[1];
  const bodyDate = raw.match(/(\d{4})年(\d{2})月(\d{2})日/)?.slice(1, 4);
  return filenameDate || (bodyDate ? bodyDate.join("-") : "");
}

function classifyCategory(title, text) {
  const titleSample = title.toLowerCase();
  const bodySample = text.slice(0, 2200).toLowerCase();
  const ranked = categoryRules.map(([category, keywords]) => {
    const score = keywords.reduce((total, keyword) => {
      const value = keyword.toLowerCase();
      const titleHits = titleSample.split(value).length - 1;
      const bodyHits = bodySample.split(value).length - 1;
      return total + titleHits * 5 + Math.min(bodyHits, 3);
    }, 0);
    return { category, score };
  }).sort((a, b) => b.score - a.score);
  return ranked[0]?.score > 0 ? ranked[0].category : "生活思考";
}

function compactHash(value) {
  const normalized = value.replace(/[\s\p{P}\p{S}]+/gu, "").toLowerCase();
  return createHash("sha256").update(normalized).digest("hex");
}

const files = walk(inputRoot).sort((a, b) => a.localeCompare(b, "zh-CN"));
const existingArticles = new Set(existingSources.map((item) => normalizeTitle(item.sourceArticle)));
const articles = files.map((absolute) => {
  const raw = readFileSync(absolute, "utf8");
  const filename = path.basename(absolute);
  const title = extractTitle(raw, filename);
  const cleaned = cleanMarkdown(raw);
  return {
    filename,
    relativePath: path.relative(inputRoot, absolute).replaceAll("\\", "/"),
    title,
    normalizedTitle: normalizeTitle(title),
    sourceDate: extractDate(raw, filename),
    category: classifyCategory(title, cleaned),
    rawBytes: statSync(absolute).size,
    cleanedCharacters: cleaned.replace(/\s+/g, "").length,
    contentHash: compactHash(cleaned),
    cleanedText: cleaned,
    alreadyInLibrary: existingArticles.has(normalizeTitle(title)),
    promotional: promoTitlePattern.test(title),
  };
});

const titleGroups = Map.groupBy(articles, (article) => article.normalizedTitle);
const hashGroups = Map.groupBy(articles, (article) => article.contentHash);

for (const article of articles) {
  const sameTitle = titleGroups.get(article.normalizedTitle) || [];
  const sameContent = hashGroups.get(article.contentHash) || [];
  const preferredTitleVersion = [...sameTitle].sort((a, b) => b.cleanedCharacters - a.cleanedCharacters || a.filename.localeCompare(b.filename, "zh-CN"))[0];
  const preferredContentVersion = [...sameContent].sort((a, b) => b.cleanedCharacters - a.cleanedCharacters || a.filename.localeCompare(b.filename, "zh-CN"))[0];
  article.duplicateOf = article !== preferredContentVersion
    ? preferredContentVersion.filename
    : article !== preferredTitleVersion
      ? preferredTitleVersion.filename
      : null;

  if (article.duplicateOf) article.decision = "duplicate";
  else if (article.alreadyInLibrary) article.decision = "already-in-library";
  else if (article.promotional) article.decision = "promo-or-notice";
  else if (article.cleanedCharacters < 900) article.decision = "too-short-review";
  else article.decision = "editorial-candidate";
}

const decisionCounts = Object.fromEntries(
  [...Map.groupBy(articles, (article) => article.decision)].map(([decision, rows]) => [decision, rows.length]),
);
const categoryCounts = Object.fromEntries(
  [...Map.groupBy(articles.filter((article) => article.decision === "editorial-candidate"), (article) => article.category)]
    .map(([category, rows]) => [category, rows.length]),
);

const report = {
  generatedAt: new Date().toISOString(),
  sourceArchive: "新增内容/zis 紫苏公众号文章MD文件0822.7z",
  totalMarkdownFiles: articles.length,
  decisionCounts,
  categoryCounts,
  articles,
};

mkdirSync(outputRoot, { recursive: true });
writeFileSync(path.join(outputRoot, "article-inventory.json"), `${JSON.stringify(report, null, 2)}\n`, "utf8");

console.log(JSON.stringify({ totalMarkdownFiles: articles.length, decisionCounts, categoryCounts }, null, 2));
