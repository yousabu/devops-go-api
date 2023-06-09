## Install Api Locally

1. Clone the repository:
- git clone https://github.com/yousabu/instabug-intern-challenge.git

2. Navigate to the project directory:
- cd instabug-intern-challenge/

3. Create a `.env` file and populate it with the required environment variables:

MYSQL_HOST=<your_mysql_host>
MYSQL_USER=<your_mysql_username>
MYSQL_PASS=<your_mysql_password>
MYSQL_PORT=<your_mysql_port>

4. Build the application:
go build -o main .

5. Run the application:
./main

<!-- # Wow Such Program

This program is very simple, it connects to a MySQL database based on the following env vars:
* MYSQL_HOST
* MYSQL_USER
* MYSQL_PASS
* MYSQL_PORT

And exposes itself on port 9090:
* On `/healthcheck` it returns an OK message, 
* On GET it returns all recorded rows.
* On POST it creates a new row.
* On PATCH it updates the creation date of the row with the same ID as the one specified in query parameter `id` -->