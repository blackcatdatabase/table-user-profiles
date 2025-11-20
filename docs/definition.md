<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – user_profiles

Encrypted user profile blob (optional).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| user_id | BIGINT | — | — | User (FK users.id), also PK. |  |
| profile_enc | BYTEA | YES | — | Encrypted profile payload. | PII: encrypted |
| key_version | VARCHAR(64) | YES | — | Key version for profile_enc. |  |
| encryption_meta | JSONB | YES | — | JSON meta of encryption. |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |