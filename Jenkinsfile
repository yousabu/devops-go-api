pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    def imageName = 'youssefabu/instaapp'
                    def dockerfile = './Dockerfile'

                    sh "docker build -t ${imageName} -f ${dockerfile} ."
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
