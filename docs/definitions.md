# user_profiles

Encrypted user profile blob (optional).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| encryption_meta | JSONB | YES |  | JSON meta of encryption. |
| key_version | VARCHAR(64) | YES |  | Key version for profile_enc. |
| profile_enc | BYTEA | YES |  | Encrypted profile payload. |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |
| user_id | BIGINT | NO |  | User (FK users.id), also PK. |

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
| vw_user_profiles | mysql | algorithm=MERGE, security=INVOKER | [packages\user-profiles\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/user-profiles/schema/040_views.mysql.sql) |
| vw_user_profiles | postgres |  | [packages\user-profiles\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/user-profiles/schema/040_views.postgres.sql) |
