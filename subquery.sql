-- WHEREでサブクエリ
--「users.gender = female」の「user_items」のデータを表示

SELECT * FROM user_items
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "female");

-- 「users.gender = male」の「user_items」のデータを表示
SELECT * FROM user_items
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "male");

-- JOINを追加
SELECT 
    users.gender,
    user_items.*
FROM user_items
JOIN users ON user_items.user_id = users.id
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "female");

SELECT 
    users.gender,
    user_items.*
FROM user_items
JOIN users ON user_items.user_id = users.id
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "male");

-- FROMでサブクエリ
--「users.gender = female」の「user_items」のデータを表示
SELECT 
    female_users.id AS user_id,
    female_users.name,
    user_items.id AS user_items_id,
    user_items.item_id,
    user_items.amount
FROM (SELECT * FROM users WHERE gender = "female") AS female_users
JOIN user_items ON female_users.id = user_items.user_id;
