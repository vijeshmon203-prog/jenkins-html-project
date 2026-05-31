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
                echo 'Taking backup of old website'
                sh 'sudo cp /var/www/html/index.html /var/www/html/index-backup.html || true'

                echo 'Deploying new website'
                sh 'sudo cp index.html /var/www/html/index.html'
                sh 'sudo systemctl restart nginx'
            }
        }

        stage('Post Deploy Scan') {
            steps {
                echo 'Post deploy scan stage started'
                sh 'chmod +x post-deploy-scan.sh'
                sh './post-deploy-scan.sh'
            }
        }

        stage('Health Check') {
            steps {
                echo 'Health check stage started'
                sh 'chmod +x health-check.sh'
                sh './health-check.sh'
            }
        }
    }

    post {
        success {
            echo 'Advanced pipeline success: Website deployed successfully'
        }

        failure {
            echo 'Pipeline failed: Rollback started'
            sh 'sudo cp /var/www/html/index-backup.html /var/www/html/index.html || true'
            sh 'sudo systemctl restart nginx'
            echo 'Rollback completed: Old website restored'
        }
    }
}
