# 🔍 Checking your SQL queries

`sqlite3` has a CLI (command line interface) which we can use to interact with our Sqlite databases. You can check your SQL queries by running your `.sql` files with the `sqlite3` CLI.

| ℹ️ Double check you have `sqlite3` installed in your codespace. Open a terminal and run `sqlite3 --version` to check you get the sqlite3 version in the command output.

 To run any `.sql` file with `sqlite3`, you can:

1. Change into the directory where the file is located.
1. Double check your `.sql` file opens a database using the `.open` statement.
1. Open a terminal and use the `sqlite3` command-line tool:
   ```terminal
   sqlite3 < <name-of-file>.sql
   ```
1. Check the query output when you run the command

For example, to run the file `setup.sql` located in `part-1`. You can:


# Extensions
We have setup / approved some VS Code extensions to help you with using SQL and SQLite

## sqlite viewer
`sqlite viewer` will allow you to view and inspect (not edit) `.db` files.

This extension will need to be manually installed in your Github Codespace in VS Code.

1. On the left you of the VS Code editor you can find the `Extensions` panel (Alternatively you can press `ctrl + shift + x / cmd + shift + x`)

2. Search for `sqlite viewer` by `Florian Klampfer` and install.

Once this is done... thats it! You can now open `.db` files and inspect your tables.

3. Alternatively if it doesn't work right away `right click` a `.db` file, select `Open With...` and chose `sqlite viewer`

## Database Notebook
Database Notebook has been installed to help working with SQL, when trying out small code blocks you way want to run code step by step to help work out whats going on.

These use a `.dbn` file and require some setup for each task to have them functioning.

### Connection Setup
Before starting a SQL Notebook we require to setup a connection

1. On the left you of the VS Code editor find the `DB Notebook`
2. In the `DB EXPLORER` tab you want find the `+` / `Create connection setting` button, here you want to setup the following:
    |  |  |
    |---------------|--------|
    | Database type | SQLite |
    | Connection name | Task-[Task Number] |
    | DB File | [Task Database File].db |

3. Create the connection

### Setting up a Notebook
Setting up a notebook is simple 

1. In your task folder create a new file `main.dbn`
2. Open the file and create your first code block

### Writing a Code Block
Code Blocks in notebook can only perform one instruction at a time (this is denoted with a line ending with `;`)

### Running your Notebook

#### Run All
The most simple way of running the scripts in your Notebook is the `Run All` command but before running any script we require to specify the connection

1. Select `Specify connection all` -> Chose your required connection for that task
2. Select `Run All` 
3. Done! You can see the output of each code block | Note: Insert and Create blocks may not have much output since they are "input" actions rather than output.

#### Running Code Block
Code blocks can be executed individually too, this can be useful when testing out just single statements and reiterating on them.

1. Assure the block has a connection specified at the bottom.
2. Assure the block shows as `Enabled`
3. Execute using the `>` on the left of the block.
4. Done!