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

        stage('Scan') {
            steps {
                echo 'Scan stage started'
                sh 'chmod +x scan.sh'
                sh './scan.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage started'
                sh 'sudo cp index.html /var/www/html/index.html'
                sh 'sudo systemctl restart nginx'
            }
        }

        stage('Monitor') {
            steps {
                echo 'Monitor stage started'
                sh 'chmod +x monitor.sh'
                sh './monitor.sh'
            }
        }
    }
}
