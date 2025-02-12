pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('123123123')
        DOCKER_IMAGE_NAME = 'ahmedshalapy/devops-task'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/ahmedshalapy805/DevOps-Task.git'
            }
        }

        stage('Build Application') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test Application') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build and Push Docker Image') {
    steps {
        script {
            // Ensure the WAR file is copied to the build context
            sh 'cp target/jpetstore.war .'

            // Build the Docker image
            sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."

            // Login to Docker Hub
            sh "echo ${DOCKER_HUB_CREDENTIALS_PSW} | docker login -u ${DOCKER_HUB_CREDENTIALS_USR} --password-stdin"

            // Push the image
            sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
        }
    }
}


        stage('Deploy with Ansible') {
    steps {
        script {
            withCredentials([sshUserPrivateKey(credentialsId: 'ansible-ssh-key', keyFileVariable: 'SSH_KEY')]) {
                sh """
                    ansible-playbook deploy.yml -i inventory.ini \
                    --private-key=\$SSH_KEY -u ahmedshalapy
                """
            }
        }
    }
}
    }
}
