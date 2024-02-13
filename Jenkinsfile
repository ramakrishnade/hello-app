@Library("Jenkins-pipeline-library@main")_
pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Git Checkout') {
            steps {
                script {
                    sayHello()
                }
            }
        }
        stage('checkout scmGit')
        {
            steps
            {
                script
                {
                    
                    checkoutScm("https://github.com/ramakrishnade/hello-app.git","Krishna")
                }
            }
        }
    }
}


