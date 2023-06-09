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
    
## Install API Using Docker-Compose
    docker-compose up -d
- In Docker-compose The Api Will Start Only After Mysql Be Healthy

## Screenshot From Running API
![Screenshot from 2023-06-09 15-55-26](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/21446643-0613-472c-b52a-704f13995208)

## Install API Using Helm
    helm install inastapp-api instaapp/
![Screenshot from 2023-06-09 16-06-48](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/a863bd79-b326-4df6-bf0a-1d6d8a946eeb)


## ArgoCD SETUP
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    
## Enable Sync Between Github & K8s ArgoCD Cluster By:
1- Install API By Using Helm Charts Command OR By Run Application.yaml K8s File And It Will Sync Automatically.
#
    kubectl apply -f Application.yaml


** I Add autoscaling manifest for number of replicas **
