pipeline {
    agent any
    environment {
        DEV_REPO = "saaruhaasan/dev"
        PROD_REPO = "saaruhaasan/prod"
    }
    stages {
        stage('Build') {
            steps {
                sh './build.sh'
            }
        }
        stage('Push') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'dev') {
                        sh "docker tag devops-build:latest $DEV_REPO:latest"
                        sh "docker push $DEV_REPO:latest"
                    } else if (env.BRANCH_NAME == 'master') {
                        sh "docker tag devops-build:latest $PROD_REPO:latest"
                        sh "docker push $PROD_REPO:latest"
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}

