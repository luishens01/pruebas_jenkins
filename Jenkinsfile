pipeline {
    agent any

    parameters {
       string(name: 'ENV_FILE', description: 'What enviroment file do you want to use?')
	choice(choices: "env-int3.yaml\nenv-test2.yaml\ntest3.yaml")
	    
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


