pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'				
				sh '../workspace@tmp/main_script.sh env-int3.yaml'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}