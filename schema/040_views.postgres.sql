-- Auto-generated from schema-views-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  user_profiles

-- Contract view for [user_profiles]
-- Includes encrypted profile blob + hex helper for debugging.
CREATE OR REPLACE VIEW vw_user_profiles AS
SELECT
  user_id,
  key_version,
  encryption_meta,
  updated_at,
  version,
  profile_enc,
  UPPER(encode(profile_enc,'hex')) AS profile_enc_hex
FROM user_profiles;
