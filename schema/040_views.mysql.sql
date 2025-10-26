-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  user_profiles
-- Contract view for [user_profiles]
-- Omits large encrypted profile blob by default.
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_user_profiles AS
SELECT
  user_id,
  key_version,
  encryption_meta,
  updated_at
FROM user_profiles;
