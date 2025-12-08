-- ------------------------------------------------------------
-- R__test_household.sql
-- テスト用 世帯 ＋ 世帯メンバー データ
-- ------------------------------------------------------------

/* ============================================================
   m_household : 自宅 / 実家
   ============================================================ */
INSERT INTO m_household (
    household_id,
    name,
    owner_user_id,
    create_user_id,
    create_program,
    created_at,
    update_user_id,
    update_program,
    updated_at
) VALUES
-- 1: 自宅、自宅オーナー user_id=2
(1, '自宅', 10, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 2: 実家、実家オーナー user_id=4
(2, '実家', 12, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));


/* ============================================================
   m_household_member : 世帯メンバー
   status: 0007 家事メンバーステータス
           0: 招待中 / 1: 有効 / 9: 離脱
   ============================================================ */

-- 自宅: メンバー2名（2, 3）
INSERT INTO m_household_member (
    household_id,
    user_id,
    nickname,
    status,
    create_user_id,
    create_program,
    created_at,
    update_user_id,
    update_program,
    updated_at
) VALUES
-- 自宅: メンバー2名（2, 3）
(1, 10, 'パパ', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(1, 11, 'ママ', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
-- 実家: メンバー4名（4, 5, 6, 2, 7, 8）
(2, 12, 'お父さん', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(2, 13, 'お母さん', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(2, 14, 'お姉ちゃん', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(2, 10, 'お兄ちゃん', '1', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(2, 15, '次女', '9', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
(2, 16, '婿', '0', 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));
