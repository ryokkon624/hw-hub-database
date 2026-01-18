-- ------------------------------------------------------------
-- R__test_user.sql
-- テスト用ユーザデータ
-- ------------------------------------------------------------

INSERT INTO m_user (
    user_id,
    email,
    password_hash,
    auth_provider,
    auth_provider_id,
    display_name,
    profile_image_key,
    locale,
    email_verified_at,
    is_active,
    create_user_id,
    create_program,
    created_at,
    update_user_id,
    update_program,
    updated_at
) VALUES
-- 10: 自宅オーナー＋実家メンバー
(10, 'home.owner@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '自宅オーナー', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 11: 自宅のもう一人のメンバー
(11, 'home.member@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '自宅メンバー', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 12: 実家オーナー
(12, 'parent.owner@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '実家オーナー', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 13: 実家メンバー1
(13, 'parent.member1@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '実家メンバー1', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 14: 実家メンバー2
(14, 'parent.member2@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '実家メンバー2', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 15: 実家メンバー3
(15, 'parent.member3@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '実家メンバー3', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 16: 実家メンバー4
(16, 'parent.member4@example.com', '$2a$08$zEbjxjK/wXfRfHjx11bADubv5Wp0EG/DAQev1OAFDXFDIVMp7.IhK', 'LOCAL', NULL, '実家メンバー4', NULL, 'ja', NOW(6), 1, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));
