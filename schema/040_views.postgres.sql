-- Auto-generated from schema-views-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  user_profiles
-- Contract view for [user_profiles]
-- Omits large encrypted profile blob by default.
CREATE OR REPLACE VIEW vw_user_profiles AS
SELECT
  user_id,
  key_version,
  encryption_meta,
  updated_at,
  version,
  encode(profile_enc, 'hex') AS profile_enc_hex
FROM user_profiles;
