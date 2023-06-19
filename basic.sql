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
