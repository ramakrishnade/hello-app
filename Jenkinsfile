@Library('Jenkins-pipeline-library') _
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
               checkoutScm(https://github.com/ramakrishnade/hello-app.git,master)
            }
        }
    }
}
