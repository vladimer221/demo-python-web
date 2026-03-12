pipeline {
    agent any

    stages {

        stage('Install dependencies') {
            steps {
                sh 'python3 -m venv venv'
                sh '. venv/bin/activate && pip install -r requirements.txt'
            }
        }

        stage('Build and Test') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

    }
}
