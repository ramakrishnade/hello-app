@Library("Jenkins-pipeline-library@main")_
pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
        choice(name:'CHOICES' ,choices:['stage','test','prod'],description:'Choose stage')
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
                echo "Build Number ${env.BUILD_ID}"
            }
        }
        stage('stage')
        {
            when
            {
                expression {
                    params.CHOICES == 'stage'
                }
            }
                    steps
                    {
                        echo "Deplying into Staging server ${params.CHOICES}"
                    }
            }
        stage('test')
        {
            steps
            {
                echo "deploying to test server"
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


