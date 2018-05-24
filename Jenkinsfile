pipeline {
    agent any
	    parameters {       
		choice(choices: 'env-int3.yaml\nenv-test2.yaml\ntest3.yaml', description: 'What enviroment file do you want to use?', name: 'ENV_FILE')
	}
    stages {
        stage('Run Tests') {
            parallel {
                stage('Packages Tests') {
                    steps {
			sh "cd components/packages/"
			sh "./test_script.sh ${params.ENV_FILE}"
                    }
                    post {
			always {
				archiveArtifacts artifacts: 'results/packages/*.log'						
			}
			success {
			  publishHTML target: [
				allowMissing: false,
				alwaysLinkToLastBuild: false,
				keepAll: true,
				reportDir: 'results/packages',
				reportFiles: 'index.html',
				reportName: 'Packages Report'
			  ]	
			}
                    }
                }
                stage('Tng-rep Tests') {
                    steps {
			sh "cd components/tng-rep/"
			sh "./components/tng-rep/test_script.sh ${params.ENV_FILE}"
                    }
                    post {
			always {
				archiveArtifacts artifacts: 'results/tng-rep/*.log'							
			}
			success {
			  publishHTML target: [
				allowMissing: false,
				alwaysLinkToLastBuild: false,
				keepAll: true,
				reportDir: 'results/packages',
				reportFiles: 'index.html',
				reportName: 'Tng-Rep Report'
			  ]	
			}
                    }
                }
            }
        }
    }
}
