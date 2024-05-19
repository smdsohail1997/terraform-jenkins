pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'your-aws-region'
    }
    
    stages {
        stage('Terraform Init') {
            steps {
                script {
                    // Get a list of directories in the root directory
                    def dirs = sh(script: 'ls -d */', returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    for (def dir in dirs) {
                        // Execute Terraform init in each directory
                        dir = dir.take(dir.size() - 1) // Remove trailing "/"
                        dir(dir) {
                            sh 'terraform init'
                        }
                    }
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Get a list of directories in the root directory
                    def dirs = sh(script: 'ls -d */', returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    for (def dir in dirs) {
                        // Execute Terraform plan in each directory
                        dir = dir.take(dir.size() - 1) // Remove trailing "/"
                        dir(dir) {
                            sh 'terraform plan -out=tfplan'
                        }
                    }
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Get a list of directories in the root directory
                    def dirs = sh(script: 'ls -d */', returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    for (def dir in dirs) {
                        // Execute Terraform apply in each directory
                        dir = dir.take(dir.size() - 1) // Remove trailing "/"
                        dir(dir) {
                            sh 'terraform apply -auto-approve tfplan'
                        }
                    }
                }
            }
        }
    }
}
