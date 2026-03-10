/* =====================================================================
   TEST DATA for t_shopping_item (Household 1 & 2)
   ===================================================================== */

/* -------------------------------------------------------
   Household 1 — 未購入 20件 + かご 1件 + 購入済み 1件
   store_type: 1=スーパー / 2=オンライン / 3=ドラッグストア
   ------------------------------------------------------- */
INSERT INTO t_shopping_item (
    household_id, name, memo, store_type, status, favorite,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
-- 未購入（status=0）: 20件
(1, '牛乳 1L',             '低脂肪',                   '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '食パン 6枚切',        NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'バナナ 1房',           NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'ヨーグルト',           'プレーン 400g',             '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '豚こま肉 300g',       NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '鶏むね肉 400g',       '皮なし',                   '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'にんじん 3本',         NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'じゃがいも 5個',       NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '玉ねぎ 3個',           NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '卵 10個',              'いつもの',                 '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'トイレットペーパー',   '12ロール ダブル',           '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'ティッシュペーパー',   '5箱セット',                 '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'ハンドソープ',         '詰め替え用',               '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '歯ブラシ',             'パパ用',                   '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '猫砂',                 'いつものやつ',             '2', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'キャットフード',       'チキン味 2kg',              '2', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '洗濯洗剤',             '詰め替え用 大容量',         '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '柔軟剤',               '詰め替え用',               '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, '醤油 1L',              NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(1, 'サランラップ',         '30cm幅',                   '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- かご（status=1）: 1件
(1, 'みりん',               '本みりん',                 '1', '1', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- 購入済み（status=9）: 1件
(1, 'ゴミ袋 45L',           '半透明 50枚入',             '3', '9', '0', 1, 'SEED_DATA', 1, 'SEED_DATA');


/* -------------------------------------------------------
   Household 2 — 未購入 20件 + かご 1件 + 購入済み 1件
   ------------------------------------------------------- */
INSERT INTO t_shopping_item (
    household_id, name, memo, store_type, status, favorite,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
-- 未購入（status=0）: 20件
(2, 'トイレットペーパー',   '18ロール',                 '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '牛乳 1L',             '成分無調整',               '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '食パン 6枚切',        NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '米 5kg',              'あきたこまち',             '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'キャベツ 1玉',        NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '豆腐 3丁',            '木綿',                     '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '味噌',                 '合わせ味噌 750g',          '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '納豆 3パック',        NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'サラダ油',             '1L',                       '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'マヨネーズ',           NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '猫砂',                 '固まるタイプ 5L',          '2', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'キャットフード',       'シニア用 1.5kg',            '2', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '台所洗剤',             '詰め替え用',               '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'ゴミ袋 45L',          '黒 30枚入',                '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'ハンドクリーム',       NULL,                        '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '歯磨き粉',             'フッ素入り',               '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '乾電池 単3',          '8本パック',                 '2', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '掃除機フィルター',     '型番: XYZ-100',            '2', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, 'ボディソープ',         '詰め替え大容量',           '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),
(2, '冷凍うどん 5食',      NULL,                        '1', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- かご（status=1）: 1件
(2, 'パスタ 500g',         NULL,                        '2', '1', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- 購入済み（status=9）: 1件
(2, '洗濯洗剤',             '柔軟剤入り',               '1', '9', '0', 1, 'SEED_DATA', 1, 'SEED_DATA');


/* =====================================================================
   TEST DATA for t_shopping_item_attachment
   ===================================================================== */

-- Household 1, shopping_item_id = 1 に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (1, 'test/milk.jpg', 'milk.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');

-- Household 1, shopping_item_id = 22 (購入済みのゴミ袋) に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (22, 'test/garbage_bag.jpg', 'garbage_bag.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');

-- Household 2, shopping_item_id = 44 (パスタ/かご) に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (43, 'test/pasta.jpg', 'pasta.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');
