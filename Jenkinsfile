pipeline {
    agent any

    stages {
        stage ("git checkout"){
            steps {
                git 'https://github.com/yousabu/instabug-intern-challenge.git'
            }
        stage('Build') {
            steps {
                script {
                    def imageName = 'youssefabu/instaapp'
                    def dockerfile = './Dockerfile'

                    try {
                        sh " docker.build ${imageName} -f ${dockerfile} "
                        echo "Docker image build successful"
                    } catch (Exception e) {
                        error "Docker image build failed: ${e.getMessage()}"
                    }
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([[
                    $class: 'UsernamePasswordMultiBinding',
                    credentialsId: 'dockerhubid',
                    usernameVariable: 'DOCKERHUB_USERNAME',
                    passwordVariable: 'DOCKERHUB_PASSWORD'
                ]]) {
                    script {
                        def imageName = 'youssefabu/instaapp'
                        def dockerhubUsername = env.DOCKERHUB_USERNAME
                        def dockerhubPassword = env.DOCKERHUB_PASSWORD

                        sh "docker login -u ${dockerhubUsername} -p ${dockerhubPassword}"

                        sh "docker push ${imageName}"
                    }
                }
            }
        }
    }
}

