-- SELECT(レコード選択)
-- usersテーブルのすべてのレコードを選択
SELECT * FROM users;

-- usersテーブルから、id = 1 のユーザを選択
SELECT * FROM users WHERE id = 1;

-- usersテーブルから、id = 1 以外のユーザを選択
SELECT * FROM users WHERE id != 1;

-- usersテーブルから、id >= 50 のユーザを選択
SELECT * FROM users WHERE id >= 50;

-- usersテーブルから、id >= 5 and id < 10 のユーザを選択
SELECT * FROM users WHERE id >= 5 AND id < 10;

-- usersテーブルから、id = 5 or id = 10 のユーザを選択
SELECT * FROM users WHERE id = 5 OR id = 10;

SELECT * FROM users WHERE id IN(5, 10);

-- usersテーブルから、id = 5 or id = 10 でないユーザを選択
SELECT * FROM users WHERE NOT(id IN(5, 10));

-- usersテーブルから、emailが「gmail.com」のユーザを選択
SELECT * FROM users WHERE email LIKE "%gmail.com%";

-- usersテーブルを idで降順（こうじゅん）（Descending）
SELECT * FROM users ORDER BY id DESC;

-- usersテーブルを emailを昇順（しょうじゅん）（Ascending）
SELECT * FROM users ORDER BY email ASC;

-- usersテーブルを emailを降順（Descending）
SELECT * FROM users ORDER BY email DESC;

-- usersテーブルから、最初の10レコード選択
SELECT * FROM users LIMIT 10;

-- usersテーブルから、最後からの10レコード選択
SELECT * FROM users ORDER BY id DESC LIMIT 10;

-- usersテーブルから、11 - 20 のレコード選択
SELECT * FROM users LIMIT 10 OFFSET 10;

-- usersテーブルから、51 - 60 のレコード選択
SELECT * FROM users LIMIT 10 OFFSET 50;


-- itemsテーブルにレコードを追加
INSERT INTO items (code, name, price, stock)
VALUES ("D00001", "コーヒー", 300, 100);

INSERT INTO items (code, name, price, stock)
VALUES ("D00002", "紅茶", 350, 100);

INSERT INTO items (code, name, price, stock)
VALUES ("D00003", "ほうじ茶", 400, 100);

-- codeの重複(じゅうふく）はエラー *code が UNIQUEに設定
INSERT INTO items (code, name, price, stock)
VALUES ("D00001", "オレンジジュース", 400, 100);

-- itemsテーブルの「id = 1」のレコードの「stock = 200」に更新
UPDATE items SET stock = 200 WHERE id = 1;

-- itemsテーブルの「id = 2」のレコードの「stock = 150」「updated_at」を現在の日時に更新
UPDATE items 
SET stock = 150, updated_at = now() 
WHERE id = 2;

-- itemsテーブルにレコードを追加
INSERT INTO items (code, name, price, stock)
VALUES ("D00004", "オレンジジュース", 400, 100);

-- itemsテーブルから「id = D00004」のレコードを削除
DELETE FROM items WHERE code = "D00004";

-- itemsテーブルのレコード数（すう）
SELECT COUNT(id) AS item_count FROM items;

-- usersテーブルのレコード数（すう）
SELECT COUNT(id) AS user_count FROM users;

-- itemsテーブルの「price」の合計値
SELECT SUM(price) AS total_price FROM items;

-- itemsテーブルの「price」のアベレージ（平均値）
SELECT AVG(price) AS avarage_price FROM items;

-- itemsテーブルの「price」の最大値（max）、最小値(min)
SELECT 
MAX(price) AS max_price,
MIN(price) AS min_price
FROM items;

-- まとめて処理
SELECT 
COUNT(id) AS item_count,
SUM(price) AS total_price,
MAX(price) AS max_price,
MIN(price) AS min_price
FROM items;

-- itemsテーブルの「price」の税抜き価格（ぜいぬきかかく）
SELECT price / 1.1 AS price_without_tax FROM items;

-- 税抜き価格の四捨五入（ししゃごにゅう） = round
SELECT ROUND(price / 1.1) AS price_without_tax FROM items;

SELECT 
name,
price,
ROUND(price / 1.1) AS price_without_tax 
FROM items;

-- 文字の結合（けつごう）
SELECT CONCAT(code, name) FROM items;

SELECT CONCAT(code, " : " ,name) AS code_and_name FROM items;

-- 文字を小文字にする
SELECT LOWER(code) FROM items;

-- itemsテーブルの「code」の先頭（せんとう）文字以外を選択
SELECT SUBSTRING(code, 2, 5) AS code_number FROM items;

-- code番号をキャスト
SELECT CAST(SUBSTRING(code, 2, 5) AS SIGNED) AS code_number 
FROM items;
