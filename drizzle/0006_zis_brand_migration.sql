-- Migrate the existing live account and content records to the zis 紫苏 identity.
INSERT OR IGNORE INTO accounts (id, display_name, handle, avatar_url, created_at, updated_at)
SELECT 'zis-default', 'zis 紫苏', '@zis', '/zis-avatar.jpg', created_at, updated_at
FROM accounts
WHERE id = 'annie-default';
--> statement-breakpoint
UPDATE contents SET owner_account_id = 'zis-default' WHERE owner_account_id = 'annie-default';
--> statement-breakpoint
UPDATE xiaohongshu_contents SET owner_account_id = 'zis-default' WHERE owner_account_id = 'annie-default';
--> statement-breakpoint
UPDATE xiaohongshu_assets SET account_id = 'zis-default' WHERE account_id = 'annie-default';
--> statement-breakpoint
DELETE FROM accounts WHERE id = 'annie-default';
--> statement-breakpoint
UPDATE accounts
SET display_name = 'zis 紫苏', handle = '@zis', avatar_url = '/zis-avatar.jpg'
WHERE id = 'zis-default';
--> statement-breakpoint
UPDATE contents
SET id = 'zis-' || substr(id, 7)
WHERE id GLOB 'annie-[0-9][0-9][0-9][0-9]';
--> statement-breakpoint
UPDATE contents
SET
  category = replace(category, '安妮', 'zis 紫苏'),
  angle = replace(angle, '安妮', 'zis 紫苏'),
  action = replace(action, '安妮', 'zis 紫苏'),
  source_name = replace(replace(source_name, '七月安妮JulyAnnie', 'zis 紫苏'), '安妮', 'zis 紫苏'),
  source_url = replace(source_url, 'annie', 'zis'),
  origin = replace(origin, '安妮', 'zis 紫苏'),
  source_article = replace(source_article, '安妮', 'zis 紫苏'),
  source_file = replace(source_file, '安妮', 'zis 紫苏'),
  title = replace(title, '安妮', 'zis 紫苏'),
  draft = replace(draft, '安妮', 'zis 紫苏'),
  insight = replace(insight, '安妮', 'zis 紫苏');
