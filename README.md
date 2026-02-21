# SQL練習用 (SQLite + DBeaver)

SQLite と DBeaver を使用した SQL 学習用プロジェクトです。
基本的なデータベース操作（作成・取得・更新・削除・集計）の理解と、実務を想定した操作練習を目的としています。

---

## 使用技術

* Python（標準ライブラリ）
* SQLite（sqlite3）
* DBeaver
* SQL

※外部ライブラリは使用していません

---

## 学習内容

### 1. データベース操作

* SQLite データベースの作成
* テーブル作成（CREATE TABLE）
* サンプルデータの登録（INSERT）

### 2. データ取得・操作

* SELECT（全件取得 / 列指定）
* WHERE（条件検索）
* AND / OR
* IN / BETWEEN
* ORDER BY（並び替え）
* LIMIT（件数制限）

### 3. データ更新・削除

* UPDATE
* DELETE

### 4. 集計

* COUNT
* MAX / MIN
* AVG

---

## フォルダ構成

```
sql-practice/
│
├─ sql/
│   └─ practice.sql        # SQL練習用クエリ一覧
│
├─ main.py                 # SQLite操作サンプル（DB作成・データ登録）
├─ README.md
├─ requirements.txt        # 外部ライブラリなし
└─ .gitignore              # venv / *.db 等を除外
```

※データベースファイル（*.db）はGit管理対象外としています

---

## 実行方法

### 1. 仮想環境の作成（任意）

```
python -m venv venv
venv\Scripts\activate   # Windows
```

### 2. データベース作成

```
python main.py
```

実行後、SQLite データベースが生成されます。

---

## SQLの実行方法

DBeaver を使用して以下を実施：

1. SQLite 接続を作成
2. 生成された `.db` ファイルを指定
3. `sql/practice.sql` を実行

---

## 学習目的

* SQLの基本構文の理解
* データベース操作の実務イメージの習得
* DBツール（DBeaver）の使用経験

---

## 今後の予定

* 複数テーブルの作成
* JOINの練習
* 実務を想定したデータ構造（売上・顧客など）

---

## 作成背景

職業訓練にて Python / SQL を学習中。
基礎理解の定着と、実務を意識したアウトプットとして作成。

SQL実行手順：
1. 01_schema.sql を実行
2. 02_seed.sql を実行
3. 03_queries.sql を実行