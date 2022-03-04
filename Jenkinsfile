pipeline {

    agent any

    environment {
        PASS = credentials('registry-pass')
        IMAGE_NAME = "ang"
        IMAGE_VERSION = "0.0.1"
    }

    stages {

        stage('Build') {
            steps {
                sh './jenkins/build/build.sh'

        }

    }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}

