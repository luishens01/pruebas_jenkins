pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'				
				sh './main_script.sh env-int3.yaml'
            }
        }
    }
}