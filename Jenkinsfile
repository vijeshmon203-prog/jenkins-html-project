pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build stage started'
            }
        }

        stage('Test') {
            steps {
                echo 'Test stage started'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage started'
                sh 'sudo cp index.html /var/www/html/index.html'
                sh 'sudo systemctl restart nginx'
            }
        }
    }
}
