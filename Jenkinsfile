pipeline {
    agent any
    tools {
        maven 'maven-sprint'
    }

    stages {
        stage('build jar') {
            steps {
                echo "building your application"
                sh 'mvn package'
            }
        }

        stage('build image') {
            steps {
                echo "testing your app"
            }
        }
        
        stage('deployment') {  
            steps {
                echo "your code is deployed right now"
            }
        }    
    }
}