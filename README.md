# SQL_projectCFG

## Introduction
1. My final project for my Kickstarter course with Code First Girls (CFG).

2. The essential points that need to be met by this project are as follows:

* Create a relational DB of your choice with minimum 5 tables
* Set Primary and Foreign Key constraints to create relations between the tables
* Using any type of the joins create a view that combines multiple tables in a logical way
* In your database, create a stored function that can be applied to a query in your DB
* Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
* Create DB diagram where all table relations are shown

3. The project must also include 2-3 'advanced options' from the following list:
* In your database, create a stored procedure and demonstrate how it runs
* In your database, create a trigger and demonstrate how it runs
* In your database, create an event and demonstrate how it runs
* Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to
produce a logically arranged result set for analysis.
Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis

## Project information
4. My project is designed to track and monitor the contents of my kitchen.

5. It creates six tables: Table_fruit_basket, Table_fridge_contents, Table_freezer_contents, Table_larder_contents, Table_vegcupboard_contents, and a table called meal_plan. It inserts data into each of the tables with relevant records (e.g. the price of ingredients, quantity, or the use by date). The primary key constraint of all six tables is the ID column, which ensures uniqueness.
   
6. The 'meal_plan' table has columns "MealID," "MealName," and foreign key columns "FruitBasketID," "FridgeContentsID," "FreezerContentsID," "LarderContentsID," and "VegCupboardContentsID." The primary key is "MealID," ensuring each row represents a unique meal plan entry. The foreign key constraints link the meal plan to the respective items in other tables. Each row in this table represents a meal plan entry with a unique "MealID," meal name, and references to the items from other tables (fruit basket, fridge, freezer, larder, and vegetable cupboard) through foreign key relationships.
   
7. The final result is a set of tables with information about the contents of the kitchen, including fruits, items in the fridge, freezer, larder, and vegetable cupboard, and a meal plan that references the items from these tables to create different meals.

## Database queries
8. I first performed a LEFT JOIN on two of my tables, data from the Table_fruit_basket and Table_fridge_contents based on the common "Item" column. My intention was that this should filter and show the specific fruits that need to be kept in the fridge. However, I quickly realised that this join did not support my intended intention.
  
9. The LEFT JOIN returns all the rows from the left table (Table_fruit_basket) and the matching rows from the right table (Table_fridge_contents). If there is no match in the right table for a row in the left table, the result will still include that row, but the columns from the right table will contain NULL values (see photo below).

![Screenshot of LEFT JOIN query](/blob/main/Screenshot%202023-07-31%20at%2018.12.28.png)

10. While you could extrapolate the information about fruit to be kept in the fridge from this, a more effective way of doing this was using an INNER JOIN. I modified my query to filter the results based on specific conditions. In this case, I wanted to show only the fruits that are present in both tables (Table_fruit_basket and Table_fridge_contents). This INNER JOIN will only return the rows where there is a match for the "Item" column in both tables, effectively showing the fruits that are present in both the fruit basket and the fridge. These are the fruits that need to be kept in the fridge. The query will not show the fruits that are only in the fruit basket or only in the fridge. I also ensured that information was available about the quantity, price, and use-by date of the fruits that need to be kept in the fridge.

![Screenshot of INNER JOIN query](/blob/main/Screenshot%202023-07-31%20at%2018.16.13.png)

