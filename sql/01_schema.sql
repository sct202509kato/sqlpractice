-- =====================================
-- 01_schema.sql
-- テーブル作成
-- 実行順：最初に実行
-- =====================================

-- usersテーブル
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER
);


-- ordersテーブル（usersと関連）
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    amount INTEGER,
    ordered_at TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);