@Library("Jenkins-pipeline-library@main")_
pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        Text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
    }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Parameters') {
            steps{
                echo "Hello ${params.PERSON}"
                echo "${params.BIOGRAPHY}"
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
                    
                    checkoutScm("https://github.com/ramakrishnade/hello-app.git","master")
                }
            }
        }
    }
}


