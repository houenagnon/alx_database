 Store the provided arguments in variables
username="$1"
database="$2"

# Execute the MySQL command with the provided username and database name to create the table
mysql -u "$username" -p -D "$database" -e "
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);
"