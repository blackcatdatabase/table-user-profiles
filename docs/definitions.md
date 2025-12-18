# user_profiles

Encrypted user profile blob (optional).

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| user_id | BIGINT | NO |  | User (FK users.id), also PK. |  |
| profile_enc | mysql: LONGBLOB / postgres: BYTEA | YES |  | Encrypted profile payload. | `encrypt`<br/>ctx: `db.vault.user_profiles.profile_enc`<br/>kv: `key_version`<br/>meta: `encryption_meta` |
| key_version | VARCHAR(64) | YES |  | Key version for profile_enc. | key version for: `profile_enc` |
| encryption_meta | mysql: JSON / postgres: JSONB | YES |  | JSON meta of encryption. | meta for: `profile_enc` |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |
| version | mysql: INT / postgres: INTEGER | NO | 0 | Optimistic locking version counter. |  |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_profiles_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_profiles_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_user_profiles | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_user_profiles | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
