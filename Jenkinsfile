pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    
    stages {   
        stage('Terraform Init') {
            steps {
                script {
                    // Get a list of directories in the root directory
                    def rootDir = new File(".")
                    def dirs = rootDir.listFiles().findAll { it.isDirectory() }
                    
                    // Iterate over each directory
                    dirs.each { dir ->
                        // Execute Terraform init in each directory
                        dir.with {
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
                    def rootDir = new File(".")
                    def dirs = rootDir.listFiles().findAll { it.isDirectory() }
                    
                    // Iterate over each directory
                    dirs.each { dir ->
                        // Execute Terraform plan in each directory
                        dir.with {
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
                    def rootDir = new File(".")
                    def dirs = rootDir.listFiles().findAll { it.isDirectory() }
                    
                    // Iterate over each directory
                    dirs.each { dir ->
                        // Execute Terraform apply in each directory
                        dir.with {
                            sh 'terraform apply -auto-approve tfplan'
                        }
                    }
                }
            }
        }
    }
}
