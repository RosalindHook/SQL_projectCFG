CREATE DATABASE kitchen_stock;

USE kitchen_stock;

-- Create table 1 --
CREATE TABLE Table_fruit_basket
(ID INT, Item VARCHAR(50), Quantity INT, PricePerItem DECIMAL(65, 2), UseBy DATE);

INSERT INTO Table_fruit_basket 
(ID, Item, Quantity, PricePerItem, UseBy)
VALUES
(1, 'pear', 3, 0.61, '2023-08-08'),
(2, 'apple', 2, 0.34, '2023-08-05'),
(3, 'kiwi', 1, 0.87, '2023-07-31'),
(4, 'orange', 0, 0.32, '2023-08-08'),
(5, 'banana', 3, 0.19, '2023-07-28');

-- Create table 2 --
CREATE TABLE Table_fridge_contents
(ID INT, Item VARCHAR(50), Weight INT, Quantity INT, PricePerItem DECIMAL(65, 2), UseBy DATE);

-- Add a Weight column to Table_fruit_basket --
ALTER TABLE Table_fruit_basket ADD Weight INT;

-- Insert data into Table_fridge_contents --
INSERT INTO Table_fridge_contents (ID, Item, Weight, Quantity, PricePerItem, UseBy)
VALUES
(1, 'milk', 1000, 1, 1.65, '2023-08-08'),
(2, 'cheese', 250, 1, 3.33, '2023-08-05'),
(3, 'butter', 250, 5, 2.10, '2023-07-31'),
(4, 'fish fingers', 500, 1, 4.50, '2023-08-08'),
(5, 'beef mince', 500, 3, 4.50, '2023-07-28'),
(6, 'yogurts', 80, 8, 0.89, '2023-08-24');

-- Create table 3 --
CREATE TABLE Table_freezer_contents
(ID INT, Item VARCHAR(50), Weight INT, Quantity INT, PricePerItem DECIMAL(65, 2), UseBy DATE);

-- Insert data into Table_freezer_contents --
INSERT INTO Table_freezer_contents (ID, Item, Weight, Quantity, PricePerItem, UseBy)
VALUES
(1, 'icecream', 1000, 1, 4.50, '2023-12-08'),
(2, 'burger patties', 500, 1, 4.50, '2023-12-05'),
(3, 'quorn mince', 250, 5, 3.45, '2024-07-31'),
(4, 'frozen peas', 500, 1, 1.23, '2024-08-08'),
(5, 'frozen onions', 500, 3, 1.12, '2024-07-28');

-- Create table 4 --
CREATE TABLE Table_larder_contents
(ID INT, Item VARCHAR(50), Weight INT, Quantity INT, PricePerItem DECIMAL(65, 2), UseBy DATE);

-- Insert data into Table_larder_contents --
INSERT INTO Table_larder_contents (ID, Item, Weight, Quantity, PricePerItem, UseBy)
VALUES
(1, 'cornflakes', 1000, 1, 2.50, '2024-01-08'),
(2, 'branflakes', 500, 1, 2.45, '2024-08-05'),
(3, 'porridge oats', 1000, 3, 1.50, '2024-07-31'),
(4, 'oat cakes', 250, 6, 1.75, '2024-12-02'),
(5, 'tinned fruit', 250, 7, 1.34, '2024-07-28'),
(6, 'pasta sauce', 300, 4, 1.29, '2024-03-03'),
(7, 'spaghetti', 500, 3, 1.23, '2024-05-02'),
(8, 'penne', 250, 2, 1.50, '2023-11-30');

-- Create table 5 --
CREATE TABLE Table_vegcupboard_contents
(ID INT, Item VARCHAR(50), Weight INT, Quantity INT, PricePerItem DECIMAL(65, 2), UseBy DATE);

-- Insert data into Table_vegcupboard_contents --
INSERT INTO Table_vegcupboard_contents (ID, Item, Weight, Quantity, PricePerItem, UseBy)
VALUES
(1, 'carrots', 700, 1, 2.50, '2023-08-08'),
(2, 'potatoes', 1000, 1, 2.45, '2023-08-05'),
(3, 'cabbage', 259, 3, 1.50, '2023-08-12');

-- Set primary key for Table_fruit_basket --
ALTER TABLE Table_fruit_basket
ADD PRIMARY KEY (ID);

-- Set primary key for Table_fridge_contents --
ALTER TABLE Table_fridge_contents
ADD PRIMARY KEY (ID);

-- Set primary key for Table_freezer_contents --
ALTER TABLE Table_freezer_contents
ADD PRIMARY KEY (ID);

-- Set primary key for Table_larder_contents --
ALTER TABLE Table_larder_contents
ADD PRIMARY KEY (ID);

-- Set primary key for Table_vegcupboard_contents --
ALTER TABLE Table_vegcupboard_contents
ADD PRIMARY KEY (ID);

-- Add foreign key in Table_fridge_contents referencing Table_fruit_basket --
ALTER TABLE Table_fridge_contents
ADD FOREIGN KEY (ID) REFERENCES Table_fruit_basket(ID);

-- Add foreign key in Table_fridge_contents referencing Table_freezer_contents --
ALTER TABLE Table_fridge_contents
ADD FOREIGN KEY (ID) REFERENCES Table_freezer_contents(ID);

-- Add foreign key in Table_fridge_contents referencing Table_larder_contents --
ALTER TABLE Table_fridge_contents
ADD FOREIGN KEY (ID) REFERENCES Table_larder_contents(ID);

-- Add foreign key in Table_fridge_contents referencing Table_vegcupboard_contents --
ALTER TABLE Table_fridge_contents
ADD FOREIGN KEY (ID) REFERENCES Table_vegcupboard_contents(ID);
