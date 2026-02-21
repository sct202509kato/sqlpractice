-- =====================================
-- 03_queries.sql
-- SQL練習用クエリ一覧
-- =====================================

-- ■ users全件取得
SELECT * FROM users;


-- ■ 条件検索
SELECT name, age
FROM users
WHERE age >= 20;


-- ■ 並び替え
SELECT *
FROM users
ORDER BY age DESC;


-- ■ 件数確認
SELECT COUNT(*) AS user_count
FROM users;


-- =====================================
-- JOIN練習（ここが実務ポイント）
-- =====================================

-- ■ ユーザーごとの注文一覧
SELECT
    u.name,
    o.amount,
    o.ordered_at
FROM users u
JOIN orders o
    ON u.id = o.user_id
ORDER BY o.ordered_at DESC;


-- ■ ユーザーごとの合計金額
SELECT
    u.name,
    SUM(o.amount) AS total_amount
FROM users u
JOIN orders o
    ON u.id = o.user_id
GROUP BY u.name;


-- ■ 注文があるユーザーのみ
SELECT DISTINCT
    u.name
FROM users u
JOIN orders o
    ON u.id = o.user_id;