## Notes
- The `.env` file is used to store the required environment variables for the application. Ensure that you provide the correct values for `MYSQL_HOST`, `MYSQL_USER`, `MYSQL_PASS`, and `MYSQL_PORT`.
- it shoud be in  instabug-intern-challenge/ dir.

## Run Api Locally Using Golang and mysql-server
    git clone https://github.com/yousabu/instabug-intern-challenge.git
    cd instabug-intern-challenge/
    go build -o main .
    ./main

## Build Docker Image
    docker build -t instaapp .
- Dockerfile Built in the way that make it as lightweight as possible with all layers of security.
## Run API And It's Database Using Docker-Compose
    docker-compose up -d
- In Docker-compose The Api Will Start Only After Mysql DB Be Healthy

## Screenshot From Running API Localy With Docker-compose
![Screenshot from 2023-06-10 23-09-06](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/2dd37c53-716c-4980-a111-df84d7f657b8)


## Install API Using Helm
    helm install inastapp-api instaapp/
![Screenshot from 2023-06-10 23-20-48](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/a1895e0c-a7c9-47d1-a0ad-8cbbf14904c0)



## ArgoCD SETUP
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    
## Enable Sync Between Github & K8s ArgoCD Cluster By:
 Install API By Using Helm Charts Command OR By Run Application.yaml K8s File And It Will Sync Automatically.
and it also point to helm package.
#
    kubectl apply -f Application.yaml

#


## Added autoscaling manifest for number of replicas for api deployment only
![Screenshot from 2023-06-10 23-25-56](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/8c607653-cdc4-45b4-acad-babbc28ae684)


#
- All Tests Done on Kubelet Cluster one master & one worker.

![Screenshot from 2023-06-10 23-22-15](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/282f82bc-f8fa-4310-b4bd-470dcf7a681b)

