-- user_itemsテーブルの集計

SELECT user_id FROM user_items;

-- user_idでグループ
SELECT user_id 
FROM user_items
GROUP BY user_id;

-- user_idでグループ
SELECT 
    user_id,
    COUNT(user_id) AS item_count
FROM user_items
GROUP BY user_id;

SELECT 
    user_id,
    COUNT(user_id) AS order_count,
    SUM(total_price) AS total_price
FROM user_items
GROUP BY user_id;

-- item_idでグループ
SELECT 
    item_id,
    COUNT(item_id) AS order_count,
    SUM(amount) AS total_amount,
    SUM(total_price) AS total_price
FROM user_items
GROUP BY item_id;

-- JOIN
-- 「user_items」に「users」を内部結合（INNER JOIN）
SELECT 
    users.id,
    users.name,
    user_items.user_id,
    user_items.item_id,
    user_items.created_at
FROM user_items
INNER JOIN users ON user_items.user_id = users.id;

-- INNERを省略
SELECT 
    users.id,
    users.name,
    user_items.user_id,
    user_items.item_id,
    user_items.created_at
FROM user_items
JOIN users ON user_items.user_id = users.id;

-- 「users」に「user_items」を内部結合（INNER JOIN）
SELECT 
    users.id,
    users.name,
    user_items.user_id,
    user_items.item_id,
    user_items.created_at
FROM users
JOIN user_items ON user_items.user_id = users.id;

-- 「user_items」に「items」を内部結合（INNER JOIN）
SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM user_items
JOIN items ON user_items.item_id = items.id;

SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM items
JOIN user_items ON user_items.item_id = items.id;


-- OUTER JOIN
-- LEFT JOIN
-- 「users」（LEFT）に「user_items」（RIGHT）が、LEFTで結合
SELECT 
    users.id,
    users.name,
    user_items.user_id,
    user_items.item_id,
    user_items.created_at
FROM users
LEFT JOIN user_items ON user_items.user_id = users.id;

-- 「user_items」（LEFT）に「users」（RIGHT）が、LEFTで結合
SELECT 
    users.id,
    users.name,
    user_items.user_id,
    user_items.item_id,
    user_items.created_at
FROM user_items
LEFT JOIN users ON user_items.user_id = users.id;

-- 「items」（LEFT）に「user_items」（RIGHT）が、LEFTで結合
SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.amount,
    user_items.created_at
FROM items
LEFT JOIN user_items ON user_items.item_id = items.id;

-- 「user_items」（LEFT）に「items」（RIGHT）が、LEFTで結合
SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.amount,
    user_items.created_at
FROM user_items
LEFT JOIN items ON user_items.item_id = items.id;

-- 「items」（LEFT）に「user_items」（RIGHT）が、RIGHTで結合
SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.amount,
    user_items.created_at
FROM items
RIGHT JOIN user_items ON user_items.item_id = items.id;

-- 「user_items」（LEFT）に「items」（RIGHT）が、RIGHTで結合
SELECT 
    items.id,
    items.name,
    user_items.user_id,
    user_items.amount,
    user_items.created_at
FROM user_items
RIGHT JOIN items ON user_items.item_id = items.id;


-- 「user_items」をベースに「users」を INNER JOINして、「user_id」でGROUP BY
SELECT 
    user_items.user_id,
    users.name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.amount) AS order_amount,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN users ON user_items.user_id = users.id
GROUP BY user_id;

