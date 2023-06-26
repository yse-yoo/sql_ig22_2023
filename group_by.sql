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
    COUNT(user_id) AS item_count,
    SUM(total_price) AS total_price
FROM user_items
GROUP BY user_id;
