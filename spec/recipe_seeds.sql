CREATE TABLE recipe(
    id SERIAL PRIMARY KEY,
    recipe_name text,
    avr_cooking_time text,
    rating int
);

INSERT INTO recipe(recipe_name, avr_cooking_time, rating) VALUES('Chicken', '30 mins', 5);
INSERT INTO recipe(recipe_name, avr_cooking_time, rating) VALUES('Steak', '40 mins', 5);
INSERT INTO recipe(recipe_name, avr_cooking_time, rating) VALUES('Fish', '20 mins', 5);
INSERT INTO recipe(recipe_name, avr_cooking_time, rating) VALUES('Aubergine', '25 mins', 4);
INSERT INTO recipe(recipe_name, avr_cooking_time, rating) VALUES('Soup', '15 mins', 3);