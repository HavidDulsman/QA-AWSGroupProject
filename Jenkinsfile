pipeline{
    agent any
    stages{
        stage("stage 1"){
            steps{
                sh 'chmod 775 ./scripts/*'
                sh './scripts/before_installation.sh'
                sh './scripts/ansible.sh'
                sh './scripts/docker.sh'
            }
        }
    }
}
//test test test 