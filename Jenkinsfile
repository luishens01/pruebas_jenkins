pipeline {
    agent any

    parameters {       
	choice(choices: 'env-int3.yaml\nenv-test2.yaml\ntest3.yaml', description: 'What enviroment file do you want to use?', name: 'ENV_FILE')
	    
    }	


    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo 'selected environment  ${params.ENV_FILE}'				
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


