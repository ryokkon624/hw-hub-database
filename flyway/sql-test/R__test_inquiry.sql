-- ------------------------------------------------------------
-- R__test_inquiry.sql
-- テスト用問い合わせデータ（50件）
-- 既存データ（inquiry_id: 1-6）と整合性を保つ
-- created_at / updated_at: 15日前〜NOW(6) でばらつかせる
-- 対象ユーザ: 10〜16
-- ------------------------------------------------------------

-- ============================================================
-- t_inquiry（inquiry_id: 101〜150）
-- 既存の 1〜6 と衝突しないよう 101 から開始
-- ============================================================

INSERT INTO t_inquiry (
    inquiry_id, user_id, category, status, title,
    create_user_id, create_program, created_at,
    update_user_id, update_program, updated_at
) VALUES
-- ステータス: 00(Open)
(101, 10, '10', '00', 'アプリの使い方がわかりません',                      10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  1 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  1 HOUR),
(102, 11, '30', '00', 'パスワードを変更したい',                             11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  2 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  2 HOUR),
(103, 12, '20', '00', '定期家事が生成されない',                             12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  5 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  5 HOUR),
(104, 13, '21', '00', '買い物リストにアイテムを追加できない',               13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR),
(105, 14, '40', '00', 'ログインできなくなった',                             14, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  7 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  7 HOUR),
(106, 15, '90', '00', 'プッシュ通知の設定方法を教えてください',             15, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR),
(107, 16, '30', '00', 'メールアドレスを変更したい',                         16, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR),

-- ステータス: 10(AI Answered)
(108, 10, '20', '10', '家事テンプレートの削除方法が知りたい',               10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR),
(109, 11, '21', '10', '購入済みアイテムを元に戻したい',                     11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  6 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR),
(110, 12, '30', '10', 'Googleアカウントとの連携方法',                       12, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  1 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  6 HOUR),
(111, 13, '10', '10', 'おうちのメンバーにオーナー権限を渡したい',           13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  8 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR),
(112, 14, '40', '10', 'アプリが起動しない',                                 14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  9 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  4 HOUR),
(113, 15, '90', '10', '多言語対応の言語を追加してほしい',                   15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  7 HOUR),
(114, 16, '20', '10', '毎月の家事が二重登録されている',                     16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  1 HOUR),
(115, 10, '21', '10', 'お気に入りアイテムの使い方',                         10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  6 HOUR),

-- ステータス: 20(Pending Staff)
(116, 11, '30', '20', 'アカウントを削除したいが操作方法がわからない',       11, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  4 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  3 HOUR),
(117, 12, '40', '20', '家事タスクが完了にならない不具合',                   12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  7 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),
(118, 13, '10', '20', '世帯を複数管理するコツを教えてほしい',               13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  9 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  2 HOUR),
(119, 14, '21', '20', '買い物リストの並び順を変えたい',                     14, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  8 HOUR),
(120, 15, '90', '20', 'ダークモードに対応してほしい',                       15, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  6 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  4 HOUR),
(121, 16, '30', '20', 'ニックネームの変更方法',                             16, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  1 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  7 HOUR),
(122, 10, '20', '20', '定期家事の終了日を変更したい',                       10, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  2 HOUR),
(123, 11, '40', '20', '通知が届かない',                                     11, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR),
(124, 12, '10', '20', 'おうちから離脱する方法',                             12, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  3 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  4 HOUR),
(125, 13, '21', '20', '購入場所を設定したい',                               13, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  5 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  3 HOUR),

-- ステータス: 25(Staff Answered)
(126, 14, '30', '25', 'パスワードリセットメールが届かない',                 14, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),
(127, 15, '20', '25', '家事タスクのスキップ機能について',                   15, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR),
(128, 16, '40', '25', '画像添付ができない',                                 16, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  6 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  7 HOUR),
(129, 10, '90', '25', 'カレンダー連携機能がほしい',                         10, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR),
(130, 11, '10', '25', 'メンバーの招待リンクが無効になった',                 11, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  7 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  4 HOUR),
(131, 12, '21', '25', '買い物アイテムに画像を追加したい',                   12, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  6 HOUR),

-- ステータス: 90(Closed)
(132, 13, '30', '90', 'ログイン時のエラーメッセージの意味',                 13, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR),
(133, 14, '20', '90', '第3週の木曜日に設定する方法',                        14, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  5 HOUR),
(134, 15, '21', '90', '買い物リストを世帯メンバーと共有できている？',       15, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR),
(135, 16, '40', '90', '保存ボタンを押すと500エラーになる',                  16, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR),
(136, 10, '30', '90', '言語設定を英語にしたい',                             10, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  1 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR),
(137, 11, '10', '90', '同一世帯に同じ家事が重複している',                   11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  2 HOUR),
(138, 12, '90', '90', 'タスクの一括完了機能がほしい',                       12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  3 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR),
(139, 13, '21', '90', 'スーパー以外の購入場所を追加できますか',             13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR),
(140, 14, '30', '90', 'SNS連携はできますか',                                14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  4 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  5 HOUR),
(141, 15, '40', '90', '操作中にアプリが落ちた',                             15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  3 HOUR),
(142, 16, '20', '90', '家事の担当者をランダムに割り当てたい',               16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  8 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  7 HOUR),
(143, 10, '21', '90', 'お気に入りアイテムを削除したい',                     10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR),
(144, 11, '10', '90', 'メンバーが5人以上いる世帯は作れますか',              11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  5 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 10 HOUR),
(145, 12, '30', '90', '退会後のデータはどうなりますか',                     12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  1 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  8 HOUR),
(146, 13, '90', '90', 'レシピ管理機能がほしい',                             13, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  6 HOUR),
(147, 14, '21', '90', '買い物リストのアイテム数上限はありますか',           14, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR),
(148, 15, '40', '90', 'ソート順がおかしい',                                 15, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  7 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR),
(149, 16, '20', '90', '担当者未割当の家事を一覧で見たい',                   16, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  9 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  1 HOUR),
(150, 10, '30', '90', 'プロフィール画像の推奨サイズは？',                   10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR);

-- ============================================================
-- t_inquiry_message
-- 各inquiry_id に整合性のあるメッセージを挿入
-- sender_type: USER / AI / STAFF
-- ステータスに応じたメッセージ構成:
--   00(Open)         : USERメッセージのみ
--   10(AI Answered)  : USER → AI
--   20(Pending Staff): USER → AI → USER（AIに納得せずエスカレ）
--   25(Staff Answered): USER → AI → USER → STAFF
--   90(Closed)       : USER → AI → USER → STAFF → USER
-- ============================================================

INSERT INTO t_inquiry_message (
    inquiry_id, seq, sender_type, body,
    create_user_id, create_program, created_at,
    update_user_id, update_program, updated_at
) VALUES

-- ----------------------------------------------------------------
-- 00(Open): USERメッセージのみ（101〜107）
-- ----------------------------------------------------------------
(101, 1, 'USER', 'アプリの基本的な使い方を教えてください。特に家事の登録方法が知りたいです。',
  10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  1 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  1 HOUR),

(102, 1, 'USER', 'パスワードを変更したいのですが、どこから変更できますか？',
  11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  2 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  2 HOUR),

(103, 1, 'USER', '定期家事を設定しましたが、タスクが自動生成されません。確認方法を教えてください。',
  12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  5 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  5 HOUR),

(104, 1, 'USER', '買い物リストにアイテムを追加しようとすると、エラーになります。',
  13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR),

(105, 1, 'USER', '昨日からログインできなくなりました。パスワードは正しいはずです。',
  14, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  7 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  7 HOUR),

(106, 1, 'USER', 'プッシュ通知の設定方法を教えてください。通知が届いていません。',
  15, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR),

(107, 1, 'USER', 'メールアドレスを変更したいのですが、設定画面から変更できますか？',
  16, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR),

-- ----------------------------------------------------------------
-- 10(AI Answered): USER → AI（108〜115）
-- ----------------------------------------------------------------
(108, 1, 'USER', '家事テンプレートを削除したいのですが、操作方法を教えてください。',
  10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  3 HOUR),
(108, 2, 'AI',   '家事設定画面から該当の家事を選択し、削除ボタンを押してください。削除すると関連するタスクも削除されますのでご注意ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR),

(109, 1, 'USER', '購入済みにしたアイテムを未購入に戻すことはできますか？',
  11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  6 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  6 HOUR),
(109, 2, 'AI',   'アイテムの詳細画面からステータスを変更できます。購入済みから未購入に戻すことが可能です。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  3 HOUR),

(110, 1, 'USER', 'Googleアカウントとの連携方法を教えてください。',
  12, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  1 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  1 HOUR),
(110, 2, 'AI',   'アカウント設定画面からGoogle連携が行えます。「Googleアカウントと連携」ボタンからご対応ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  6 HOUR),

(111, 1, 'USER', 'おうちのオーナー権限を別のメンバーに渡したいのですが、方法を教えてください。',
  13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  8 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  8 HOUR),
(111, 2, 'AI',   'おうち設定画面の「オーナー変更」からメンバーを選択して権限を譲渡できます。変更後は元に戻せませんのでご注意ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR),

(112, 1, 'USER', 'アプリを起動しようとすると、ロゴ画面で止まってしまいます。',
  14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  9 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  9 HOUR),
(112, 2, 'AI',   'アプリの再起動やキャッシュのクリアをお試しください。それでも解決しない場合は詳細な状況をお知らせください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  4 HOUR),

(113, 1, 'USER', 'スペイン語以外の言語にも対応してほしいです。フランス語を追加していただけますか？',
  15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  2 HOUR),
(113, 2, 'AI',   'ご要望ありがとうございます。現在は日本語・英語・スペイン語に対応しています。他言語対応は今後の機能追加として検討いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  7 HOUR),

(114, 1, 'USER', '毎月の家事が二重に登録されているようです。確認方法を教えてください。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),
(114, 2, 'AI',   '家事設定画面から重複している家事をご確認ください。同名の家事が複数ある場合は不要な方を削除してください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  1 HOUR),

(115, 1, 'USER', 'お気に入りアイテムの使い方を教えてください。どういう場面で使うものですか？',
  10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR),
(115, 2, 'AI',   'お気に入りアイテムは、よく購入する商品を登録しておくと、次回からワンタップで買い物リストに追加できる機能です。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  6 HOUR),

-- ----------------------------------------------------------------
-- 20(Pending Staff): USER → AI → USER（116〜125）
-- ----------------------------------------------------------------
(116, 1, 'USER', 'アカウントを削除したいのですが、操作方法がわかりません。',
  11, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  4 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  4 HOUR),
(116, 2, 'AI',   'アカウント設定画面の一番下に「アカウントの削除」があります。ただし、おうちのオーナーの場合は先にオーナー権限を譲渡する必要があります。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR),
(116, 3, 'USER', 'オーナーを変更しようとしたのですが、他にメンバーがいないと言われました。どうすればよいですか？',
  11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  3 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  3 HOUR),

(117, 1, 'USER', '家事タスクを完了にしようとすると、エラーが発生して完了にできません。',
  12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  7 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  7 HOUR),
(117, 2, 'AI',   'ページを再読み込みしてから再度お試しください。それでも解決しない場合は、ブラウザのキャッシュをクリアしてみてください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  4 HOUR),
(117, 3, 'USER', 'キャッシュをクリアしても同じエラーが出ます。別のブラウザでも試しましたが同様です。',
  12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),

(118, 1, 'USER', '自宅と実家の2つのおうちを管理しているのですが、効率よく管理するコツを教えてください。',
  13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  9 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  9 HOUR),
(118, 2, 'AI',   'ヘッダーのおうち切り替えから各世帯を切り替えて管理できます。世帯ごとに家事・買い物リストが独立しています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  3 HOUR),
(118, 3, 'USER', 'ありがとうございます。世帯をまたいで家事を一覧で見る方法はありますか？',
  13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  2 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  2 HOUR),

(119, 1, 'USER', '買い物リストのアイテムを手動で並べ替えたいのですが、方法はありますか？',
  14, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  2 HOUR),
(119, 2, 'AI',   '現在、買い物リストの手動並べ替え機能はご用意しておりません。購入場所でのフィルタリングはご利用いただけます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR),
(119, 3, 'USER', '並べ替え機能の追加を要望したいです。優先度の設定もできるようにしてほしいです。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  8 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  8 HOUR),

(120, 1, 'USER', 'ダークモードに対応してほしいです。夜に使うとき眩しいです。',
  15, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  6 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  6 HOUR),
(120, 2, 'AI',   'ご要望ありがとうございます。現在ダークモードは未対応ですが、今後の機能追加として検討いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  2 HOUR),
(120, 3, 'USER', 'ぜひ対応をご検討ください。いつ頃対応予定ですか？',
  15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  4 HOUR),

(121, 1, 'USER', 'おうちごとのニックネームを変更したいのですが、どこから変更できますか？',
  16, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  1 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  1 HOUR),
(121, 2, 'AI',   'おうち設定画面の「メンバー」タブから自分のニックネームを変更できます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  4 HOUR),
(121, 3, 'USER', '設定画面を確認しましたが、ニックネーム変更の項目が見当たりません。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  7 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  7 HOUR),

(122, 1, 'USER', '定期家事の終了日を延長したいのですが、方法を教えてください。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR),
(122, 2, 'AI',   '家事設定画面から該当の家事を選択し、終了日を変更して保存してください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  1 HOUR),
(122, 3, 'USER', '変更しようとしたのですが、「終了日は開始日より後にしてください」というエラーが出て保存できません。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  2 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  2 HOUR),

(123, 1, 'USER', '家事が完了したときの通知が届きません。設定はオンにしています。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR),
(123, 2, 'AI',   'ブラウザの通知許可設定をご確認ください。また、通知設定画面でグループ別のON/OFFも確認してみてください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  3 HOUR),
(123, 3, 'USER', 'ブラウザの設定も確認しましたが、許可になっています。それでも通知が来ません。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR),

(124, 1, 'USER', 'おうちから離脱する方法を教えてください。',
  12, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  3 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  3 HOUR),
(124, 2, 'AI',   'おうち設定画面の「メンバー」タブから「おうちから離脱する」を選択してください。オーナーの場合は先に権限の譲渡が必要です。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR),
(124, 3, 'USER', 'オーナーなのですが、他のメンバーがいないため権限を渡せません。この場合はどうすればよいですか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  4 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  4 HOUR),

(125, 1, 'USER', '買い物アイテムの購入場所をドラッグストアに設定したいのですが、「その他」しか選べません。',
  13, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  5 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  5 HOUR),
(125, 2, 'AI',   '購入場所はスーパー、オンライン、ドラッグストアから選択できます。アイテム作成・編集画面からご設定ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  2 HOUR),
(125, 3, 'USER', 'ありがとうございます。確認できました。ただ、それ以外の購入場所を追加する方法はありますか？',
  13, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  3 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  3 HOUR),

-- ----------------------------------------------------------------
-- 25(Staff Answered): USER → AI → USER → STAFF（126〜131）
-- ----------------------------------------------------------------
(126, 1, 'USER', 'パスワードリセットのメールを送信しましたが、届きません。',
  14, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  2 HOUR),
(126, 2, 'AI',   '迷惑メールフォルダをご確認ください。また、メールアドレスが正しいかご確認ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  4 HOUR),
(126, 3, 'USER', '迷惑メールフォルダも確認しましたが届いていません。登録メールアドレスはあっています。',
  14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  6 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  6 HOUR),
(126, 4, 'STAFF','確認いたしました。弊社のメール送信ログを確認したところ、送信は正常に行われています。お使いのメールプロバイダー側でブロックされている可能性があります。別のメールアドレスでお試しいただくか、しばらく時間をおいて再度お試しください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),

(127, 1, 'USER', '家事タスクをスキップしたいのですが、操作方法を教えてください。',
  15, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  4 HOUR),
(127, 2, 'AI',   'タスクの操作ボタンからスキップを選択できます。スキップしたタスクは一覧で確認できます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  2 HOUR),
(127, 3, 'USER', 'スキップしたタスクは翌週に繰り越されますか？それとも消えてしまいますか？',
  15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR),
(127, 4, 'STAFF','スキップされたタスクは翌週には繰り越されません。スキップ済みとして記録されます。繰り越しが必要な場合は新たにタスクを手動で登録するか、定期家事の設定をご変更ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR),

(128, 1, 'USER', '買い物アイテムに画像を添付しようとすると、アップロードに失敗します。',
  16, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  6 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  6 HOUR),
(128, 2, 'AI',   '画像は5MB以下のJPEG/PNG形式に対応しています。ファイルサイズと形式をご確認ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  1 HOUR),
(128, 3, 'USER', 'PNG形式で2MBのファイルを使用していますが、それでも失敗します。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR),
(128, 4, 'STAFF','ご不便をおかけしており申し訳ございません。現在、特定の環境でファイルアップロードに問題が発生していることを確認しています。修正対応を進めておりますので、今しばらくお待ちください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  7 HOUR),

(129, 1, 'USER', 'Googleカレンダーと連携できますか？家事タスクをカレンダーに表示したいです。',
  10, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR),
(129, 2, 'AI',   '現在Googleカレンダーとの連携機能はご用意しておりません。今後の機能追加として検討しています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  6 HOUR),
(129, 3, 'USER', 'いつ頃対応予定ですか？開発ロードマップがあれば教えていただけますか？',
  10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  4 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  4 HOUR),
(129, 4, 'STAFF','ご要望ありがとうございます。具体的なリリース時期はお伝えできる段階ではございませんが、カレンダー連携は要望の多い機能として優先度高く検討しております。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR),

(130, 1, 'USER', 'メンバーに送った招待リンクが無効と言われたそうです。',
  11, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  7 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  7 HOUR),
(130, 2, 'AI',   '招待リンクには有効期限があります。期限切れの場合は新しい招待リンクを発行してください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  2 HOUR),
(130, 3, 'USER', '発行してから1時間も経っていないのですが、それでも無効と言われます。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  5 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  5 HOUR),
(130, 4, 'STAFF','確認いたしました。招待リンクの有効期限は24時間ですので、1時間以内であれば有効なはずです。招待されたメンバーの方がすでにアカウントをお持ちの場合、そのアカウントでのログイン後に招待リンクをお試しください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  4 HOUR),

(131, 1, 'USER', '買い物アイテムに商品画像を追加したいのですが、どこから追加できますか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  5 HOUR),
(131, 2, 'AI',   '買い物アイテムの詳細画面から画像を追加できます。詳細画面を開いてカメラアイコンをタップしてください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  3 HOUR),
(131, 3, 'USER', '詳細画面にカメラアイコンが見当たりません。どこにありますか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  7 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  7 HOUR),
(131, 4, 'STAFF','詳細画面下部の「添付画像」セクションに「+」ボタンがあります。画面をスクロールダウンするとご確認いただけます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  6 HOUR),

-- ----------------------------------------------------------------
-- 90(Closed): USER → AI → USER → STAFF → USER（132〜150）
-- ----------------------------------------------------------------
(132, 1, 'USER', 'ログイン時に「認証エラー」が表示されますが、どういう意味ですか？',
  13, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 15 DAY + INTERVAL  6 HOUR),
(132, 2, 'AI',   'メールアドレスまたはパスワードが正しくない場合に表示されます。パスワードをご確認ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  1 HOUR),
(132, 3, 'USER', 'パスワードは確かに正しいはずです。コピペで入力しても同じエラーになります。',
  13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  4 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  4 HOUR),
(132, 4, 'STAFF','パスワードリセットをお試しください。リセット後に新しいパスワードでログインできるかご確認ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  7 HOUR),
(132, 5, 'USER', 'リセットしたらログインできました。ありがとうございます！',
  13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  3 HOUR),

(133, 1, 'USER', '第3週の木曜日に繰り返す家事を設定したいのですが、うまくいきません。',
  14, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 14 DAY + INTERVAL  8 HOUR),
(133, 2, 'AI',   '家事設定で「繰り返し種別」を「第n曜日」に設定し、第3週と木曜日を選択してください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR),
(133, 3, 'USER', 'ありがとうございます。設定できました！',
  14, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR),
(133, 4, 'STAFF','解決されて何よりです。他にご不明な点がございましたらお気軽にお問い合わせください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  8 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  8 HOUR),
(133, 5, 'USER', 'ありがとうございます！',
  14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  5 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  5 HOUR),

(134, 1, 'USER', '買い物リストは世帯メンバーと自動的に共有されていますか？',
  15, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 13 DAY + INTERVAL  2 HOUR),
(134, 2, 'AI',   'はい、買い物リストはおうちのメンバー全員とリアルタイムで共有されています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR),
(134, 3, 'USER', 'メンバーが追加したアイテムが自分の画面に表示されないのですが。',
  15, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  8 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  8 HOUR),
(134, 4, 'STAFF','ページを再読み込みするとメンバーが追加したアイテムが表示されます。現在はリアルタイム自動更新に対応しておらず、手動での更新が必要です。ご不便をおかけして申し訳ございません。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR),
(134, 5, 'USER', '了解しました。ありがとうございます。',
  15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR),

(135, 1, 'USER', '設定を保存しようとすると500エラーが表示されます。',
  16, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 12 DAY + INTERVAL  5 HOUR),
(135, 2, 'AI',   'サーバー側で問題が発生している可能性があります。しばらく時間をおいてから再度お試しください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  2 HOUR),
(135, 3, 'USER', '1日待っても同じエラーが出ます。',
  16, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  4 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  4 HOUR),
(135, 4, 'STAFF','ご報告ありがとうございます。サーバーログを確認したところ、特定の入力値でエラーが発生することを確認しました。修正対応いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  7 HOUR),
(135, 5, 'USER', '修正していただきありがとうございます。正常に保存できるようになりました。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  4 HOUR),

(136, 1, 'USER', '言語設定を日本語から英語に変更したいです。',
  10, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  1 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL 11 DAY + INTERVAL  1 HOUR),
(136, 2, 'AI',   'アカウント設定画面から言語を変更できます。設定を保存するとアプリ全体の表示言語が切り替わります。',
   1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  3 HOUR),
(136, 3, 'USER', 'ヘッダーのJA/EN/ESボタンからも変更できますか？',
  10, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  5 HOUR),
(136, 4, 'STAFF','はい、ヘッダーの言語切り替えボタンでも変更可能です。ただしアカウント設定での変更が永続的に保存されます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR),
(136, 5, 'USER', 'ありがとうございます！ヘッダーから変更できました。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  8 HOUR),

(137, 1, 'USER', '同一世帯に同じ名前の家事が2つ登録されています。',
  11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL 10 DAY + INTERVAL  7 HOUR),
(137, 2, 'AI',   '家事設定画面から不要な方を削除してください。同名の家事は登録できますが、整理のためご確認ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  3 HOUR),
(137, 3, 'USER', '削除しようとしたら「削除できません」というエラーになります。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  5 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  5 HOUR),
(137, 4, 'STAFF','未完了のタスクが紐づいている家事は削除できない仕様です。該当タスクを完了またはスキップしてから再度お試しください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  2 HOUR),
(137, 5, 'USER', 'タスクを完了にしたら削除できました！ありがとうございます。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  2 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  2 HOUR),

(138, 1, 'USER', '複数の家事タスクを一括で完了にする機能はありますか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  3 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  9 DAY + INTERVAL  3 HOUR),
(138, 2, 'AI',   'My Tasksページから過去のタスクを一括完了できます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  6 HOUR),
(138, 3, 'USER', 'My Tasksでは一括完了できましたが、家事分担ページでも一括完了できるようにしてほしいです。',
  12, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  4 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  4 HOUR),
(138, 4, 'STAFF','ご要望ありがとうございます。家事分担ページでの一括完了機能は今後の改善として検討いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR),
(138, 5, 'USER', 'よろしくお願いします。',
  12, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR),

(139, 1, 'USER', '買い物場所にコンビニを追加することはできますか？',
  13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  8 DAY + INTERVAL  6 HOUR),
(139, 2, 'AI',   '現在の購入場所は、スーパー・オンライン・ドラッグストアから選択できます。カスタム追加は現在対応しておりません。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  3 HOUR),
(139, 3, 'USER', 'コンビニも追加してほしいです。要望として上げてもらえますか？',
  13, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  6 HOUR),
(139, 4, 'STAFF','ご要望ありがとうございます。コンビニを購入場所として追加することについて、開発チームに共有いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR),
(139, 5, 'USER', 'ありがとうございます。対応をお待ちしています。',
  13, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  1 HOUR),

(140, 1, 'USER', 'LINEやSlackと連携できますか？家事通知をLINEで受け取りたいです。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  4 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  7 DAY + INTERVAL  4 HOUR),
(140, 2, 'AI',   '現在はSNS連携機能はご用意しておりません。今後の機能追加として検討しています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR),
(140, 3, 'USER', '是非対応をご検討ください。特にLINE連携は家族で使うのに便利だと思います。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  5 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  5 HOUR),
(140, 4, 'STAFF','ご意見ありがとうございます。LINE連携については、開発ロードマップの検討項目として承りました。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  5 HOUR),
(140, 5, 'USER', 'よろしくお願いします。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  5 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  5 HOUR),

(141, 1, 'USER', '操作中にアプリが突然落ちてしまいました。データは保存されていますか？',
  15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  6 DAY + INTERVAL  2 HOUR),
(141, 2, 'AI',   '操作の種類によりますが、送信・保存ボタンを押した後であればデータは保存されています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  5 HOUR),
(141, 3, 'USER', '保存ボタンを押す直前に落ちてしまいました。',
  15, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  7 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  7 HOUR),
(141, 4, 'STAFF','ご不便をおかけして申し訳ございません。保存前のデータは残念ながら復元できません。再度ご入力いただく必要があります。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  3 HOUR),
(141, 5, 'USER', 'わかりました。ありがとうございます。',
  15, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  3 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  3 HOUR),

(142, 1, 'USER', '毎週の家事担当をメンバー間でランダムに割り当てることはできますか？',
  16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  8 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  5 DAY + INTERVAL  8 HOUR),
(142, 2, 'AI',   '現在、ランダム自動割り当て機能はご用意しておりません。手動での担当変更はドラッグ＆ドロップで行えます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  4 HOUR),
(142, 3, 'USER', 'ランダム割り当て機能の追加を要望します。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR),
(142, 4, 'STAFF','ご要望ありがとうございます。ランダム割り当て機能は多くのユーザー様からご要望をいただいており、優先的に検討しております。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  7 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  7 HOUR),
(142, 5, 'USER', '期待しています！よろしくお願いします。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  7 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  7 HOUR),

(143, 1, 'USER', 'お気に入りに登録したアイテムを削除したいのですが、方法を教えてください。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  4 DAY + INTERVAL  3 HOUR),
(143, 2, 'AI',   'アイテムの詳細画面でお気に入りのハートアイコンをタップするとお気に入り解除できます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  6 HOUR),
(143, 3, 'USER', 'できました！ありがとうございます。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  8 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  8 HOUR),
(143, 4, 'STAFF','解決できて良かったです。他にご不明な点があればお気軽にお問い合わせください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  4 HOUR),
(143, 5, 'USER', 'ありがとうございました！',
  10, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR),

(144, 1, 'USER', '世帯のメンバー数に上限はありますか？',
  11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  5 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  3 DAY + INTERVAL  5 HOUR),
(144, 2, 'AI',   '現在のところ、世帯メンバー数に明確な上限は設けていません。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  8 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  8 HOUR),
(144, 3, 'USER', 'ありがとうございます。安心しました。',
  11, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  6 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  6 HOUR),
(144, 4, 'STAFF','はい、現在上限はございません。大人数のご家族でも安心してご利用いただけます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 12 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 12 HOUR),
(144, 5, 'USER', 'ありがとうございます！',
  11, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 10 HOUR, 11, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 10 HOUR),

(145, 1, 'USER', '退会するとデータはどうなりますか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  1 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  1 HOUR),
(145, 2, 'AI',   '退会するとアカウントに紐づくデータは削除されます。世帯のオーナーの場合は先にオーナー権限を譲渡してください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  4 HOUR),
(145, 3, 'USER', 'データのエクスポート機能はありますか？',
  12, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  7 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  7 HOUR),
(145, 4, 'STAFF','現在データエクスポート機能はご用意しておりません。今後の機能として検討いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 10 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL 10 HOUR),
(145, 5, 'USER', 'わかりました。エクスポート機能も追加してもらえると助かります。',
  12, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  8 HOUR, 12, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  8 HOUR),

(146, 1, 'USER', 'レシピ管理機能を追加してほしいです。',
  13, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  2 DAY + INTERVAL  6 HOUR),
(146, 2, 'AI',   'ご要望ありがとうございます。現在レシピ管理機能はございませんが、今後の機能拡張として検討いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  9 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  9 HOUR),
(146, 3, 'USER', 'よろしくお願いします。',
  13, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  5 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  5 HOUR),
(146, 4, 'STAFF','ご要望承りました。開発チームに共有いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  8 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  8 HOUR),
(146, 5, 'USER', 'ありがとうございます！',
  13, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  6 HOUR, 13, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  6 HOUR),

(147, 1, 'USER', '買い物リストに登録できるアイテム数に上限はありますか？',
  14, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  2 HOUR),
(147, 2, 'AI',   '現在のところ、アイテム数に明確な上限は設けておりません。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR),
(147, 3, 'USER', 'ありがとうございます。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  7 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  7 HOUR),
(147, 4, 'STAFF','ご確認いただきありがとうございます。上限はございませんので安心してご利用ください。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR),
(147, 5, 'USER', 'ありがとうございました。',
  14, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR, 14, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR),

(148, 1, 'USER', '買い物リストのソート順がおかしいです。追加した順になっていません。',
  15, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  7 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  7 HOUR),
(148, 2, 'AI',   '現在、買い物リストの表示順は購入場所でのグループ分けを優先しています。追加順での表示は現在対応しておりません。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  6 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  6 HOUR),
(148, 3, 'USER', '追加順でも表示できるようにしてほしいです。',
  15, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR),
(148, 4, 'STAFF','ご要望ありがとうございます。ソート順の選択機能については開発チームに共有いたします。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR),
(148, 5, 'USER', 'よろしくお願いします。',
  15, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR, 15, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR),

(149, 1, 'USER', '担当者が割り当てられていない家事タスクだけを一覧で見たいです。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  9 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  1 DAY + INTERVAL  9 HOUR),
(149, 2, 'AI',   '家事分担ページで「未割当」フィルターをご利用いただくと、担当者のいないタスクのみ表示できます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR),
(149, 3, 'USER', 'ありがとうございます！確認できました。',
  16, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR),
(149, 4, 'STAFF','解決できて良かったです。他にご不明な点があればお気軽にどうぞ。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR),
(149, 5, 'USER', 'ありがとうございました！',
  16, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  1 HOUR, 16, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  1 HOUR),

(150, 1, 'USER', 'プロフィール画像の推奨サイズを教えてください。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  5 HOUR),
(150, 2, 'AI',   'プロフィール画像は正方形（1:1）の画像を推奨しています。サイズは512×512px以上を推奨しています。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  4 HOUR),
(150, 3, 'USER', 'ありがとうございます。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  3 HOUR),
(150, 4, 'STAFF','推奨サイズのご確認ありがとうございます。正方形の画像であれば自動でトリミングされます。',
   1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR,  1, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  2 HOUR),
(150, 5, 'USER', 'わかりました！ありがとうございます。',
  10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  1 HOUR, 10, 'SEED_DATA', NOW(6) - INTERVAL  0 DAY - INTERVAL  1 HOUR);
