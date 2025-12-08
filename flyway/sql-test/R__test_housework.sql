-- ------------------------------------------------------------
-- R__test_housework.sql
-- テスト用 家事マスタ データ
-- ------------------------------------------------------------

INSERT INTO m_housework (
    housework_id,
    household_id,
    name,
    description,
    category,
    recurrence_type,
    weekly_days,
    day_of_month,
    nth_week,
    weekday,
    start_date,
    end_date,
    default_assignee_user_id,
    create_user_id,
    create_program,
    created_at,
    update_user_id,
    update_program,
    updated_at
) VALUES
/* 1: 自宅 - トイレ掃除（毎週 月・木） */
      (1, 1, 'トイレ掃除', 'トイレまわりの掃除', 'CLEAN', '1', 18, NULL, NULL, NULL, '2025-01-01', '2029-12-31', 10, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
/* 2: 自宅 - シーツ交換（毎週 土） */
      (2, 1, 'シーツ交換', 'ベッドシーツの交換', 'CLEAN', '1', 64, NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
/* 3: 自宅 - ゴミ捨て（段ボール：毎月4日） */
      (3, 1, 'ゴミ捨て(段ボール)', '段ボールの資源ごみ出し', 'GARBAGE', '2', NULL, 4, NULL, NULL, '2025-01-01', '2029-12-31', 10, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
/* 4: 実家 - 玄関掃除（毎月 最終日曜） */
      (4, 2, '玄関掃除', '玄関まわりの掃除', 'CLEAN', '3', NULL, NULL, 5, 0, '2025-01-01', '2029-12-31', 12, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
/* 5: 実家 - 猫トイレの掃除（毎週 月・木） */
      (5, 2, '猫トイレの掃除', '猫トイレまわりの掃除', 'PET', '1', 18, NULL, NULL, NULL, '2025-01-01', '2029-12-31', 13, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));
