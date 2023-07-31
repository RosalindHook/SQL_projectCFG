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

--Query applying stored function (see tables.sql) to find total cost of items in Table_fruit_basket (quantity * price per item)
SELECT Item, Quantity, PricePerItem, stock_kitchen.TotalPrice(Quantity, PricePerItem) AS TotalPrice
FROM Table_fruit_basket;

--Query with sub-query to determine items in particular table e.g. freezer that are high in stock
SELECT Item, Quantity, PricePerItem, UseBy
FROM Table_freezer_contents
WHERE Quantity > (SELECT AVG(Quantity) FROM Table_freezer_contents);
