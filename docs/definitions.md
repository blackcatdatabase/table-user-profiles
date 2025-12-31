# user_profiles

Encrypted user profile blob (optional).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| user_id | BIGINT | NO |  | User (FK users.id), also PK. |
| profile_enc | mysql: LONGBLOB / postgres: BYTEA | YES |  | Encrypted profile payload. |
| key_version | VARCHAR(64) | YES |  | Key version for profile_enc. |
| encryption_meta | mysql: JSON / postgres: JSONB | YES |  | JSON meta of encryption. |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |

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
