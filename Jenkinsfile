pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    
    stages {
        /*stage('Checkout') {
            steps {
                git 'your-repository-url' // Replace 'your-repository-url' with the actual URL of your repository
            }
        }*/
        
        stage('Terraform Init') {
            steps {
                dir('EC2') { // Change directory to 'ec2' folder
                    script {
                        sh 'terraform init'
                    }
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                dir('EC2') { // Change directory to 'ec2' folder
                    script {
                        sh 'terraform plan -out=tfplan'
                    }
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                dir('EC2') { // Change directory to 'ec2' folder
                    script {
                        sh 'terraform apply -auto-approve tfplan'
                    }
                }
            }
        }
    }
}
