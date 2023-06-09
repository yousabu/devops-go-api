## Notes
- The `.env` file is used to store the required environment variables for the application. Ensure that you provide the correct values for `MYSQL_HOST`, `MYSQL_USER`, `MYSQL_PASS`, and `MYSQL_PORT`.
- it shoud be in  instabug-intern-challenge/ dir.

## Install Api Locally
    ```shell
    git clone https://github.com/yousabu/instabug-intern-challenge.git
    cd instabug-intern-challenge/
    go build -o main .
    ./main

    
## Run API Using Docker-Compose
1- Build Docker image:
    ```shell
    docker build -t instapi .
2- Run Compose:
    ```shell
    docker-compose up -d
