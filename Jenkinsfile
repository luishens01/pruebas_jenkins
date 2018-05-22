pipeline {
    agent any

    parameters {
       string(name: 'ENV_FILE',
	choices: 'env-int3.yaml\nenv-test2.yaml\ntest3.yaml',
	description: 'What enviroment file do you want to use?')    
    }	


    stages {
        stage('Build') {
            steps {
                echo 'Building..'				
				sh './main_script.sh ${params.ENV_FILE}'
            }
        }

    }



    post {
        always {
            archiveArtifacts artifacts: 'results/**/*.log'
            
        }
    }


}


