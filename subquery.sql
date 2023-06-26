-- 「users.gender = female」の「user_items」のデータを表示

SELECT * FROM user_items
WHERE user_items.id IN (SELECT id FROM users WHERE gender = "female");

-- 「users.gender = male」の「user_items」のデータを表示
SELECT * FROM user_items
WHERE user_items.id IN (SELECT id FROM users WHERE gender = "male");