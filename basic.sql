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
