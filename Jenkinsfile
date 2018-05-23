pipeline {
    agent any
	    parameters {       
		choice(choices: 'env-int3.yaml\nenv-test2.yaml\ntest3.yaml', description: 'What enviroment file do you want to use?', name: 'ENV_FILE')
	}
    stages {
        stage('Run Tests') {
            parallel {
                stage('Packages Tests') {
                    agent {
                        label "packages"
                    }
                    steps {
			sh "/components/packages/test_script.sh ${params.ENV_FILE}"
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
				reportName: 'Results Report'
			  ]	
			}
                    }
                }
                stage('Tng-rep Tests') {
                    agent {
                        label "Tng-rep Tests"
                    }
                    steps {
			sh "/components/tng-rep/test_script.sh ${params.ENV_FILE}"
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
				reportName: 'Results Report'
			  ]	
			}
                    }
                }
            }
        }
    }
}
