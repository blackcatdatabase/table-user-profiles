-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-10-24T09:45:40Z)
-- engine: postgres
-- table:  user_profiles
-- Contract view for [user_profiles]
-- Omits large encrypted profile blob by default; add it back only if needed.
CREATE OR REPLACE VIEW vw_user_profiles AS
SELECT
  user_id,
  key_version,
  encryption_meta,
  updated_at
FROM user_profiles;
