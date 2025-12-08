/* =====================================================================
   TEST DATA for t_shopping_item (Household 1 & 2)
   ===================================================================== */

/* -------------------------------------------------------
   Household 1
   ------------------------------------------------------- */
INSERT INTO t_shopping_item (
    household_id, name, memo, store_type, status, favorite,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
-- 未購入・お気に入り
(1, '牛乳 1L', '低脂肪', '1', '0', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- かごに入っている
(1, '卵 10個', NULL, '1', '1', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- 購入済み
(1, '猫砂', 'いつものやつ', '3', '9', '0', 1, 'SEED_DATA', 1, 'SEED_DATA');


/* -------------------------------------------------------
   Household 2
   ------------------------------------------------------- */
INSERT INTO t_shopping_item (
    household_id, name, memo, store_type, status, favorite,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
-- 未購入
(2, 'トイレットペーパー', '', '3', '0', '0', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- かご
(2, 'パスタ 500g', NULL, '2', '1', '1', 1, 'SEED_DATA', 1, 'SEED_DATA'),

-- 購入済み
(2, '洗濯洗剤', '柔軟剤入り', '1', '9', '0', 1, 'SEED_DATA', 1, 'SEED_DATA');



/* =====================================================================
   TEST DATA for t_shopping_item_attachment
   画像付きアイテムとして Household 1 の item_id = 1, 3
   Household 2 の item_id = 5 に添付
   ===================================================================== */

-- Household 1, shopping_item_id = 1 に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (1, 'test/milk.jpg', 'milk.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');

-- Household 1, shopping_item_id = 3 に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (3, 'test/cat_sand.jpg', 'cat_sand.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');

-- Household 2, shopping_item_id = 5 に画像あり
INSERT INTO t_shopping_item_attachment (
    shopping_item_id, file_key, file_name, mime_type, sort_order,
    create_user_id, create_program, update_user_id, update_program
)
VALUES
    (5, 'test/pasta.jpg', 'pasta.jpg', 'image/jpeg', 0, 1, 'SEED_DATA', 1, 'SEED_DATA');
