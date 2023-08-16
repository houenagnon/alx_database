# Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <database_name>"
    exit 1
fi

# Store the provided arguments in variables
username="$1"
database="$2"

# Execute the MySQL command with the provided username and database name to create the table
mysql -u "$username" -p -D "$database" -e "
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);
"S