pipeline{
    agent any
    stages{
        stage('Clone the code'){
            steps{
                echo "Cloning the code..."
                git url: "https://github.com/TheRahulRaypure/node-todo-cicd.git", branch: "master"
            }
        }
        stage('Build and Test'){
            steps{
                echo "Build and Test the app..."
                sh "docker build -t node-app ."
            }
        }

        stage('Push to DockerHub'){
            steps{
                withCredentials([usernamePassword(
                    credentialsID: "dockerHubCreds",
                    usernameVariable: "dockerHubUser",
                    passwordVariable: "dockerHubPassword"
                )]) {
                    sh "docker login -u ${dockerHubUser} -p ${dockerHubPassword}"
                    sh "docker image tag node-app:latest ${env.dockerHubUser}/node-app:latest"
                    sh "docker push ${env.dockerHubUser}/node-app:latest"
                }
            }
        }
        stage('Deploy') {
            steps{
                echo "Deploying the app..."
            }
        }
    }
}