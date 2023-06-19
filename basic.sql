-- SELECT(レコード選択)
-- usersテーブルのすべてのレコードを選択
SELECT * FROM users;

-- usersテーブルから、id = 1 のユーザを選択
SELECT * FROM users WHERE id = 1;

-- usersテーブルから、id = 1 以外のユーザを選択
SELECT * FROM users WHERE id != 1;

-- usersテーブルから、id >= 50 のユーザを選択
SELECT * FROM users WHERE id >= 50;

