pipeline {
    agent any
    stages {
        stage("Build")
        {
            steps
            {
                script {
                    echo "INFO: Building Docker Image"
                    sh"docker build -t eureka_server:latest ."
                     echo "INFO: Docker Image built"
                }
            }
        }
        
        stage("Deploy")
        {
            steps
            {
                script {
                    echo "INFO: Running new Docker image"
                    sh "docker rm -f eureka_server || true"
                    sh "docker run --restart always -p 8761:8761 -d --name eureka_server  eureka_server:latest"
                    echo "INFO: Deployed"
                }
            }
        }
    }
}
                    
