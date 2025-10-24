-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  user_profiles
CREATE TABLE IF NOT EXISTS user_profiles (
  user_id BIGINT PRIMARY KEY,
  profile_enc BYTEA NULL,
  key_version VARCHAR(64) NULL,
  encryption_meta JSONB NULL,
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
);
