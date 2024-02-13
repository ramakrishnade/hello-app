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
        stage('SCM Checkout')
        {
            steps
            {
                script
                {
                    checkoutScm("Rama","Krishna")
                }
            }
        }
    }
}
