-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  user_profiles
-- Contract view for [user_profiles]
-- Omits large encrypted profile blob by default; add it back if your service truly needs it.
CREATE OR REPLACE VIEW vw_user_profiles AS
SELECT
  user_id,
  key_version,
  encryption_meta,
  updated_at
FROM user_profiles;
