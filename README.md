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
![Screenshot from 2023-06-10 23-09-06](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/b04ac944-b4b2-4d17-8fa2-5ccad0d3e923)


## Install API Using Kubectl
     kubectl apply -k .

![Screenshot from 2023-06-13 15-43-45](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/148cfd52-a1e9-455a-85cb-b77625139fcf)



## Install API Using Helm
    helm install inastapp-api instaapp/
![Screenshot from 2023-06-10 23-20-48](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/b58d0696-0021-4257-b93f-977b86fc238d)




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
![Screenshot from 2023-06-10 23-25-56](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/b4de4569-c129-41c1-bfb1-f4d45d0effee)



#
- All Tests Done on Kubelet Cluster one master & one worker.


![Screenshot from 2023-06-10 23-22-15](https://github.com/yousabu/instabug-intern-challenge/assets/66924041/cfb129bd-dc7d-402d-822b-f6e09c1e5e9f)

