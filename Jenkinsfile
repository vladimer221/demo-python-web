pipeline {
    agent any

    stages {

        stage('Clone project') {
            steps {
                git 'https://github.com/vladimer221/demo-python-web.git'
            }
        }

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

        stage('Deploy to server') {
            steps {
                sh 'scp -r * user@REMOTE_SERVER:/home/user/app/'
                sh 'ssh user@REMOTE_SERVER "cd /home/user/app && nohup python3 app/app.py &"'
            }
        }
    }
}
