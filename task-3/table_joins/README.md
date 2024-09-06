# SQL Workshop: Bakery Database Management

Welcome to the SQL workshop focused on managing a bakery's database. In this exercise, you'll practice using SQL joins to combine data from different tables. You'll explore inner joins, left joins, and the use of table aliases to enhance your SQL queries.

## Database Schema Overview

Your database consists of the following tables:
- **cake_recipes:** Information about different cake recipes.
- **character:** Details about characters and their favorite cakes.

### Sample Data

#### Cake Recipes:
| id  | cake_name       | recipe_link                                        |
|-----|-----------------|---------------------------------------------------|
| 1   | Victoria Sponge | https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe |
| 2   | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake    |
| 3   | Red Velvet      | https://www.bbcgoodfood.com/recipes/red-velvet-cake|

#### Characters:
| id  | name          | favourite_cake   |
|-----|---------------|------------------|
| 1   | Mickey Mouse  | Victoria Sponge  |
| 2   | Minnie Mouse  | Carrot Cake      |
| 3   | Donald Duck   | Carrot Cake      |
| 4   | Daisy Duck    | Red Velvet       |
| 5   | Pluto         | Pupcakes         |

## Tasks

### Sample Task: Basic Table Operations

1. **List All Characters**
   - View all rows from the `character` table.
   - **Expected Output Example:**

     | id  | name          | favourite_cake   |
     |-----|---------------|------------------|
     | 1   | Mickey Mouse  | Victoria Sponge  |
     | 2   | Minnie Mouse  | Carrot Cake      |
     | 3   | Donald Duck   | Carrot Cake      |
     | 4   | Daisy Duck    | Red Velvet       |
     | 5   | Pluto         | Pupcakes         |

2. **List Cake Recipes with Truncated Links**
   - Use `substr(recipe_link, 1, 20)` to truncate the `recipe_link` column to 20 characters.
   - **Expected Output Example:**

     | id  | cake_name       | recipe_link            |
     |-----|-----------------|------------------------|
     | 1   | Victoria Sponge | https://www.bbcgoodfo  |
     | 2   | Carrot Cake     | https://www.bbcgoodfo  |
     | 3   | Red Velvet      | https://www.bbcgoodfo  |

### Task 1: Joining Tables

1. **Inner Join on All Columns**
   - Perform an inner join on the `character` and `cake_recipes` tables using the `favourite_cake` and `cake_name` columns.
   - **Expected Output:**

     | id  | name          | favourite_cake   | id  | cake_name       | recipe_link |
     |-----|---------------|------------------|-----|-----------------|-------------|
     | 1   | Mickey Mouse  | Victoria Sponge  | 1   | Victoria Sponge | https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe |
     | 2   | Minnie Mouse  | Carrot Cake      | 2   | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake |
     | 3   | Donald Duck   | Carrot Cake      | 2   | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake |
     | 4   | Daisy Duck    | Red Velvet       | 3   | Red Velvet      | https://www.bbcgoodfood.com/recipes/red-velvet-cake |

2. **Inner Join on All Columns - Specified**
   - Explicitly list all columns to be selected in the inner join.
   - **Expected Output:**

     | name          | favourite_cake   | recipe_link |
     |---------------|------------------|-------------|
     | Mickey Mouse  | Victoria Sponge  | https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe |
     | Minnie Mouse  | Carrot Cake      | https://www.bbcgoodfood.com/recipes/carrot-cake |
     | Donald Duck   | Carrot Cake      | https://www.bbcgoodfood.com/recipes/carrot-cake |
     | Daisy Duck    | Red Velvet       | https://www.bbcgoodfood.com/recipes/red-velvet-cake |

3. **Inner Join on Specific Columns**
   - Join the two tables but only select specific columns.
   - **Expected Output:**

     | name          | cake_name       | recipe_link                                        |
     |---------------|-----------------|---------------------------------------------------|
     | Mickey Mouse  | Victoria Sponge | https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe |
     | Minnie Mouse  | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake    |
     | Donald Duck   | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake    |
     | Daisy Duck    | Red Velvet      | https://www.bbcgoodfood.com/recipes/red-velvet-cake|

4. **Inner Join on Specific Columns with Table Aliases**
   - Use aliases for table names to make your query more readable.
   - **Expected Output:** 
     (Same as the previous table but using shorter aliases for the table names.)

### Task 2: Using Left Joins

1. **Left Join Using Character Table**
   - Use a `LEFT JOIN` to return all characters and their corresponding cake recipes, including those without a matching recipe.
   - **Expected Output:**

     | name          | cake_name       | recipe_link                                        |
     |---------------|-----------------|---------------------------------------------------|
     | Mickey Mouse  | Victoria Sponge | https://www.bbcgoodfood.com/recipes/classic-victoria-sandwich-recipe |
     | Minnie Mouse  | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake    |
     | Donald Duck   | Carrot Cake     | https://www.bbcgoodfood.com/recipes/carrot-cake    |
     | Daisy Duck    | Red Velvet      | https://www.bbcgoodfood.com/recipes/red-velvet-cake|
     | Pluto         | NULL            | NULL                                               |

2. **Left Join Using Cake Recipes Table**
   - Use a `LEFT JOIN` to return all cake recipes and their corresponding characters, including those without a matching character.
   - **Expected Output:**

     | cake_name       | name          |
     |-----------------|---------------|
     | Victoria Sponge | Mickey Mouse  |
     | Carrot Cake     | Minnie Mouse  |
     | Carrot Cake     | Donald Duck   |
     | Red Velvet      | Daisy Duck    |
     | NULL            | Pluto         |


## Conclusion

In this workshop, you've practiced various SQL operations including inner joins, left joins, and table aliases. You've learned how to combine data from different tables to create more informative and complex queries. These skills are fundamental for database management and data analysis.
