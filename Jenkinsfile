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
                    // Find all directories containing main.tf files
                    def directories = sh(script: "find . -type f -name 'main.tf' -exec dirname {} \\;", returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    directories.each { directory ->
                        // Execute Terraform init in each directory
                        sh "cd ${directory} && terraform init"
                    }
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Find all directories containing main.tf files
                    def directories = sh(script: "find . -type f -name 'main.tf' -exec dirname {} \\;", returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    directories.each { directory ->
                        // Execute Terraform plan in each directory
                        sh "cd ${directory} && terraform plan -out=tfplan"
                    }
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Find all directories containing main.tf files
                    def directories = sh(script: "find . -type f -name 'main.tf' -exec dirname {} \\;", returnStdout: true).trim().split("\n")
                    
                    // Iterate over each directory
                    directories.each { directory ->
                        // Execute Terraform apply in each directory
                        sh "cd ${directory} && terraform apply -auto-approve tfplan"
                    }
                }
            }
        }
    }
}
