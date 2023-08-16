-- Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

-- Store the provided arguments in variables
username="$1"
database="$2"

-- Execute the MySQL command with the provided username and database name
mysql -u "$username" -p -D "$database" -e "SHOW TABLES;"
S