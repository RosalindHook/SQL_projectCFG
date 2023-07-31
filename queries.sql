--Queries to be used with tables.sql file

--Left join combines data from the Table_fruit_basket and Table_fridge_contents tables based on the common "Item" column
SELECT Table_fruit_basket.*, Table_fridge_contents.*
FROM Table_fruit_basket
LEFT JOIN Table_fridge_contents
ON Table_fruit_basket.Item = Table_fridge_contents.Item;


--Inner join to show which items in fruit basket need to be kept in fridge
SELECT Table_fruit_basket.Item, Table_fruit_basket.Quantity, Table_fruit_basket.PricePerItem, Table_fruit_basket.UseBy
FROM Table_fruit_basket
INNER JOIN Table_fridge_contents
ON Table_fruit_basket.Item = Table_fridge_contents.Item;
