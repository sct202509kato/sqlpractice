import sqlite3

# DBに接続（なければ作られる）
conn = sqlite3.connect("sample.db")
cur = conn.cursor()

# テーブル作成
cur.execute(
    """
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
)
"""
)

# データ追加
cur.execute("INSERT INTO users (name, age) VALUES (?, ?)", ("Aさん", 25))
conn.commit()

# データ取得
cur.execute("SELECT * FROM users")
rows = cur.fetchall()

for row in rows:
    print(row)

conn.close()
