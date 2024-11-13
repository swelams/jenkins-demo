pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                echo "Build stage."
            }
            post {
                always {
                    echo "This block always runs after this stage."
                }
            }
        }
        stage("Test") {
            steps {
                echo "Test stage."
                error ''
            }
            post {
                failure {
                    echo "This block runs when the status of this stage is marked unstable."
                }
            }
        }
        stage("Release") {
            steps {
                echo "Release stage."
            }
            post {
                success {
                    echo "This block runs when the stage succeeded."
                }
            }
        }
    }
    post {
        always {
            echo "slackSend color: good message:this pipeline has been build sucessfully"
        }
    }
}
