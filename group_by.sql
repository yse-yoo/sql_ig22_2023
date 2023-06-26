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
    user_items.created_at
FROM user_items
JOIN items ON user_items.item_id = items.id;
