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
