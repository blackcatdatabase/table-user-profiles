-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: user_profiles
CREATE TABLE IF NOT EXISTS user_profiles (
  user_id BIGINT UNSIGNED PRIMARY KEY,
  profile_enc LONGBLOB NULL,
  key_version VARCHAR(64) NULL,
  encryption_meta JSON NULL,
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
