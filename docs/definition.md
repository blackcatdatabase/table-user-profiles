<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – user_profiles

Encrypted user profile blob (optional).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| user_id | BIGINT UNSIGNED | — | — | User (FK users.id), also PK. |  |
| profile_enc | LONGBLOB | YES | — | Encrypted profile payload. | PII: encrypted |
| key_version | VARCHAR(64) | YES | — | Key version for profile_enc. |  |
| encryption_meta | JSON | YES | — | JSON meta of encryption. |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |