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
/* ============================================================
   自宅 (household_id=1) — 48件 — ID 1〜48
   メンバー: 10(パパ) / 11(ママ)
   ※ default_assignee_user_id は NULL 多め
   ============================================================ */

/* --- CLEAN（掃除）: 12件 — ID 1〜12 --- */
      (1,  1, 'トイレ掃除',         'トイレまわりの掃除',             'CLEAN', '1', 18,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (2,  1, 'シーツ交換',         'ベッドシーツの交換',             'CLEAN', '1', 64,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (3,  1, '風呂掃除',           '浴槽・排水口の掃除',             'CLEAN', '1', 9,    NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (4,  1, '洗面台掃除',         '洗面台まわりの拭き掃除',         'CLEAN', '1', 4,    NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (5,  1, 'リビング掃除機',     'リビングの掃除機がけ',           'CLEAN', '1', 42,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (6,  1, '寝室掃除機',         '寝室の掃除機がけ',               'CLEAN', '1', 64,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (7,  1, '廊下モップ',         '廊下のモップがけ',               'CLEAN', '1', 36,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (8,  1, '窓拭き',             '窓ガラスの拭き掃除',             'CLEAN', '2', NULL, 15,   NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (9,  1, 'エアコンフィルター',  'エアコンフィルターの掃除',       'CLEAN', '2', NULL, 1,    NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (10, 1, '換気扇掃除',         '換気扇の油汚れ掃除',             'CLEAN', '2', NULL, 20,   NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (11, 1, '玄関掃き掃除',       '玄関まわりの掃き掃除',           'CLEAN', '3', NULL, NULL, 1,    0,    '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (12, 1, 'ベランダ掃除',       'ベランダの拭き掃除・排水溝',     'CLEAN', '3', NULL, NULL, 3,    6,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- GARBAGE（ゴミ出し）: 8件 — ID 13〜20 --- */
      (13, 1, '燃えるゴミ',         '可燃ゴミの集積所搬出',           'GARBAGE', '1', 18,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (14, 1, '燃えないゴミ',       '不燃ゴミの集積所搬出',           'GARBAGE', '1', 32,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (15, 1, 'ペットボトル',       'ペットボトルの分別・搬出',       'GARBAGE', '1', 8,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (16, 1, '缶・瓶',             '缶と瓶の分別・搬出',             'GARBAGE', '1', 8,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (17, 1, 'ゴミ捨て(段ボール)', '段ボールの資源ごみ出し',         'GARBAGE', '2', NULL, 4,   NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (18, 1, '古紙回収',           '新聞・チラシ等の古紙回収',       'GARBAGE', '3', NULL, NULL, 2,   3,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (19, 1, '古着回収',           '不要な服の回収日',               'GARBAGE', '3', NULL, NULL, 4,   6,    '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (20, 1, 'プラスチックゴミ',   'プラスチック製容器包装の搬出',   'GARBAGE', '1', 4,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- KITCHEN（キッチン関連）: 10件 — ID 21〜30 --- */
      (21, 1, '食器洗い',           '夕食後の食器洗い',               'KITCHEN', '1', 127, NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (22, 1, '冷蔵庫整理',         '冷蔵庫の中身チェックと整理',     'KITCHEN', '1', 1,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (23, 1, 'コンロ掃除',         'ガスコンロ・IH周りの掃除',       'KITCHEN', '1', 64,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (24, 1, 'シンク掃除',         'シンク・排水口の掃除',           'KITCHEN', '1', 72,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (25, 1, '食料品買い出し',     '一週間分の食料品のまとめ買い',   'KITCHEN', '1', 64,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (26, 1, '電子レンジ掃除',     '電子レンジ内部の拭き掃除',       'KITCHEN', '2', NULL, 10,  NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (27, 1, '食洗機洗浄',         '食洗機のクリーナー洗浄',         'KITCHEN', '2', NULL, 25,  NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (28, 1, 'オーブン掃除',       'オーブントースター内の掃除',     'KITCHEN', '3', NULL, NULL, 1,   0,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (29, 1, '調味料補充チェック', '調味料の残量チェックと購入',     'KITCHEN', '3', NULL, NULL, 2,   6,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (30, 1, '米の補充',           'お米の注文・買い出し',           'KITCHEN', '2', NULL, 5,   NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- GARDEN（庭の手入れ）: 6件 — ID 31〜36 --- */
      (31, 1, '水やり',             '庭の植物への水やり',             'GARDEN', '1', 42,  NULL, NULL, NULL, '2025-04-01', '2025-10-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (32, 1, '芝刈り',             '庭の芝生の刈り込み',             'GARDEN', '3', NULL, NULL, 2,   6,    '2025-04-01', '2025-10-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (33, 1, '草むしり',           '庭の雑草取り',                   'GARDEN', '1', 1,   NULL, NULL, NULL, '2025-04-01', '2025-10-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (34, 1, '落ち葉掃除',         '庭の落ち葉の掃き掃除',           'GARDEN', '1', 64,  NULL, NULL, NULL, '2025-10-01', '2025-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (35, 1, '肥料やり',           '庭の植物に肥料を与える',         'GARDEN', '2', NULL, 1,   NULL, NULL, '2025-04-01', '2025-10-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (36, 1, 'プランター手入れ',   'プランターの土替え・苗の確認',   'GARDEN', '3', NULL, NULL, 4,   0,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- PET（ペット関連）: 6件 — ID 37〜42 --- */
      (37, 1, '猫の餌やり',         '朝夕の猫の餌やり',               'PET', '1', 127,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (38, 1, '猫トイレ掃除',       '猫トイレの砂交換と清掃',         'PET', '1', 18,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (39, 1, '猫のブラッシング',   '猫の毛並みのブラッシング',       'PET', '1', 72,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (40, 1, '猫の爪切り',         '猫の爪切り',                     'PET', '2', NULL,  15,  NULL, NULL, '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (41, 1, 'キャットフード注文', 'キャットフードのネット注文',     'PET', '3', NULL,  NULL, 1,   1,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (42, 1, '猫砂補充',           '猫砂の購入と補充',               'PET', '2', NULL,  20,  NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- OTHER（その他）: 6件 — ID 43〜48 --- */
      (43, 1, '洗濯',               '洗濯機回して干すまで',           'OTHER', '1', 42,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 11,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (44, 1, '布団干し',           '布団を外に干す',                 'OTHER', '1', 1,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (45, 1, 'アイロンがけ',       'ワイシャツ等のアイロンがけ',     'OTHER', '1', 1,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (46, 1, '家計簿つけ',         '月の支出まとめ・家計簿記入',     'OTHER', '3', NULL, NULL, 5,   0,    '2025-01-01', '2029-12-31', 10,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (47, 1, '防災用品チェック',   '防災グッズの期限・備蓄確認',     'OTHER', '2', NULL, 1,   NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (48, 1, '郵便受け確認',       '郵便受けのチェックと仕分け',     'OTHER', '1', 42,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* ============================================================
   実家 (household_id=2) — 30件 — ID 49〜78
   メンバー: 12(お父さん) / 13(お母さん) / 14(お姉ちゃん) / 10(お兄ちゃん)
   ※ default_assignee_user_id は NULL 多め
   ============================================================ */

/* --- CLEAN（掃除）: 8件 — ID 49〜56 --- */
      (49, 2, '玄関掃除',           '玄関まわりの掃除',               'CLEAN', '3', NULL, NULL, 5,   0,    '2025-01-01', '2029-12-31', 12,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (50, 2, 'リビング掃除機',     'リビングの掃除機がけ',           'CLEAN', '1', 42,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (51, 2, '廊下モップ',         '廊下のモップがけ',               'CLEAN', '1', 36,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (52, 2, 'トイレ掃除',         '1階・2階トイレの掃除',           'CLEAN', '1', 18,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 13,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (53, 2, '風呂掃除',           '浴槽・洗い場の掃除',             'CLEAN', '1', 9,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (54, 2, '窓拭き',             '1階・2階の窓拭き',               'CLEAN', '2', NULL, 15,  NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (55, 2, 'エアコンフィルター',  'リビング・寝室のフィルター清掃', 'CLEAN', '2', NULL, 1,   NULL, NULL, '2025-01-01', '2029-12-31', 14,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (56, 2, 'ベランダ掃除',       '2階ベランダの掃き掃除',          'CLEAN', '3', NULL, NULL, 2,   6,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- GARBAGE（ゴミ出し）: 5件 — ID 57〜61 --- */
      (57, 2, '燃えるゴミ',         '可燃ゴミの搬出',                 'GARBAGE', '1', 18,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', 12,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (58, 2, '燃えないゴミ',       '不燃ゴミの搬出',                 'GARBAGE', '1', 32,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (59, 2, 'ペットボトル',       'ペットボトルの分別・搬出',       'GARBAGE', '1', 8,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (60, 2, '古紙回収',           '新聞・雑誌の回収',               'GARBAGE', '3', NULL, NULL, 2,   3,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (61, 2, 'プラスチックゴミ',   'プラ容器包装の搬出',             'GARBAGE', '1', 4,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 13,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- KITCHEN（キッチン関連）: 5件 — ID 62〜66 --- */
      (62, 2, '食器洗い',           '食後の食器洗い',                 'KITCHEN', '1', 127, NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (63, 2, '冷蔵庫整理',         '冷蔵庫の賞味期限チェック',       'KITCHEN', '1', 1,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 13,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (64, 2, 'コンロ掃除',         'ガスコンロ周りの掃除',           'KITCHEN', '1', 64,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (65, 2, '食料品買い出し',     '一週間分の食料品まとめ買い',     'KITCHEN', '1', 64,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (66, 2, '調味料チェック',     '調味料の残量確認と補充',         'KITCHEN', '3', NULL, NULL, 1,   6,    '2025-01-01', '2029-12-31', 14,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- GARDEN（庭の手入れ）: 4件 — ID 67〜70 --- */
      (67, 2, '水やり',             '庭の花壇・鉢植えへの水やり',     'GARDEN', '1', 42,  NULL, NULL, NULL, '2025-04-01', '2025-10-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (68, 2, '草むしり',           '庭の雑草取り',                   'GARDEN', '1', 1,   NULL, NULL, NULL, '2025-04-01', '2025-10-31', 12,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (69, 2, '落ち葉掃除',         '庭と駐車場の落ち葉掃き',         'GARDEN', '1', 64,  NULL, NULL, NULL, '2025-10-01', '2025-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (70, 2, '植木剪定',           '庭木の剪定・手入れ',             'GARDEN', '3', NULL, NULL, 3,   6,    '2025-04-01', '2025-10-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- PET（ペット関連）: 5件 — ID 71〜75 --- */
      (71, 2, '猫トイレの掃除',     '猫トイレまわりの掃除',           'PET', '1', 18,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 13,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (72, 2, '猫の餌やり',         '朝夕の猫の餌やり',               'PET', '1', 127,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (73, 2, '猫のブラッシング',   '毛並みの手入れ',                 'PET', '1', 72,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (74, 2, 'キャットフード注文', 'フードのネット注文',             'PET', '3', NULL,  NULL, 1,   1,    '2025-01-01', '2029-12-31', 14,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (75, 2, '猫砂補充',           '猫砂の買い足し',                 'PET', '2', NULL,  20,  NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),

/* --- OTHER（その他）: 3件 — ID 76〜78 --- */
      (76, 2, '洗濯',               '洗濯物を干して取り込むまで',     'OTHER', '1', 42,  NULL, NULL, NULL, '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (77, 2, '布団干し',           '布団を干して取り込む',           'OTHER', '1', 1,   NULL, NULL, NULL, '2025-01-01', '2029-12-31', 12,   1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6)),
      (78, 2, '町内会回覧板',       '回覧板の確認と次の家へ回す',     'OTHER', '3', NULL, NULL, 1,   1,    '2025-01-01', '2029-12-31', NULL, 1, 'SEED_DATA', NOW(6), 1, 'SEED_DATA', NOW(6));
