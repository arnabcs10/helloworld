pipeline {
    agent any
    tools {
        maven 'maven-3.8.6'
    }
    stages {
        stage ('Clone Code from Repository') {
            steps {                
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/arnabcs10/helloworld.git']]])
            }
        }
        stage ('Build') {
            steps {
                echo 'Running Build phase...'  
                echo 'java --version'
                sh 'mvn clean package'
            }
        }
        stage ('Test') {
            steps {
                echo 'Running Test phase...'   
                 sh 'mvn test'             
            }
        }        
        stage ('Deploy') {          
            steps {                
                echo 'Deployed...'
            }
        }
        
        }
}