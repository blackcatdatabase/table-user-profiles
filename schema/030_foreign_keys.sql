-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: user_profiles
ALTER TABLE user_profiles ADD CONSTRAINT fk_user_profiles_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
