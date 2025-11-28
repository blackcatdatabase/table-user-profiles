-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  user_profiles

CREATE TABLE IF NOT EXISTS user_profiles (
  user_id BIGINT PRIMARY KEY,
  profile_enc BYTEA NULL,
  key_version VARCHAR(64) NULL,
  encryption_meta JSONB NULL,
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INTEGER NOT NULL DEFAULT 0,
  CONSTRAINT chk_user_profiles_version CHECK (version >= 0)
);
