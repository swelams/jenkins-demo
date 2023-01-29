pipeline {
    agent any
    tools {
        maven 'maven-sprint'
    }
    parameters {
        string(name:'project-name', defaultValue:'', description:'this paramater help you to know project name')
        choice (name:'tag', choices ['1.1','2.2','3.3'], description:'')

    }

    stages {
        stage('build jar') {
            steps {
                echo "building your application"
                sh 'mvn package'
            }
        }

        stage('build image') {
            when {
                expression {
                    params.project-name == 'sprint'
                }
            }
            steps {
                echo "testing your app on ${params.tag}" 
            }
        }
        
        stage('deployment') {  
            steps {
                echo "your code is deployed right now"
            }
        }    
    }


}