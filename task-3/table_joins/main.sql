.open characterbakery.db
.mode column

-- drop and recreate the cake recipes table
DROP TABLE IF EXISTS cake_recipes;
CREATE TABLE IF NOT EXISTS cake_recipes (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  cake_name VARCHAR (20) NOT NULL,
  recipe_link VARCHAR (500) NOT NULL
);

-- insert the character's details into the characters table
INSERT INTO cake_recipes ( cake_name, recipe_link ) VALUES 
  ( 'Victoria Sponge', 'https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe' ),
  ( 'Carrot Cake', 'https://www.bbcgoodfood.com/recipes/carrot-cake' ),
  ( 'Red Velvet', 'https://www.bbcgoodfood.com/recipes/red-velvet-cake' )
;



-- drop and recreate the characters table
DROP TABLE IF EXISTS character;
CREATE TABLE IF NOT EXISTS character (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (20) NOT NULL,
  favourite_cake VARCHAR (20) NOT NULL
);

-- insert the character's details into the characters table
INSERT INTO character ( name, favourite_cake ) VALUES 
  ( 'Mickey Mouse', 'Victoria Sponge' ),
  ( 'Minnie Mouse', 'Carrot Cake' ),
  ( 'Donald Duck', 'Carrot Cake' ),
  ( 'Daisy Duck', 'Red Velvet' ),
  ( 'Pluto', 'Pupcakes' )
;



-- select * (all) columns from the character table
SELECT * FROM character;

-- select specific columns from the cake recipes and limit the link data to 20 
SELECT id, cake_name, substr(recipe_link, 1, 20) FROM cake_recipes;
