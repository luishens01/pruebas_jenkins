pipeline {
    agent any

    parameters {
       choice(name: 'env_file',
	choices: 'env-int3.yaml\nenv-test2.yaml\ntest3.yaml',
	description: 'What enviroment file do you want to use?')    
    }	


    stages {
        stage('Build') {
            steps {
                echo 'Building..'				
				sh './main_script.sh ${params.env_file}'
            }
        }

    }



    post {
        always {
            archiveArtifacts artifacts: 'results/**/*.log'
            
        }
    }


}


