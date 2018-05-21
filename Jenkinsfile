pipeline {
agent {
    node {
        label 'test node'
    }
}
stages {
    stage('Execute the main script') {
        steps {
            sh 'main_script.sh'
        }
    }

 }
}