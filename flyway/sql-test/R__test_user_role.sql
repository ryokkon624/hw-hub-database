-- ------------------------------------------------------------
-- R__test_user_role.sql
-- テスト用ユーザロールデータ
-- ------------------------------------------------------------

INSERT INTO  m_user_role(
    user_role_id,
    user_id,
    role,
    create_user_id,
    create_program,
    created_at,
    update_user_id,
    update_program,
    updated_at
) VALUES
-- 10:Admin
(1, 10, 'ADMIN', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 11:Support
(2, 11, 'SPPRT', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));
