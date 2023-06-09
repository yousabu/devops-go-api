## Notes
- The `.env` file is used to store the required environment variables for the application. Ensure that you provide the correct values for `MYSQL_HOST`, `MYSQL_USER`, `MYSQL_PASS`, and `MYSQL_PORT`.
- it shoud be in  instabug-intern-challenge/ dir.

## Install Api Locally
    git clone https://github.com/yousabu/instabug-intern-challenge.git
    cd instabug-intern-challenge/
    go build -o main .
    ./main

## Build Docker Image
    docker build -t instaapp .
    
## Run API Using Docker-Compose
    docker-compose up -d

## Screenshot From Running API
![Screenshot from 2023-06-09 15-55-26](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/21446643-0613-472c-b52a-704f13995208)
