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
        stages('SCM Checkout')
        {
            steps
            {
                script
                {
                    checkoutScm()
                }
            }
        }
    }
}
