pipeline {
    agent any
    
    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir() // Supprime tout le contenu du workspace
            }
        }
        
        stage('Clone Git Repository') {
            steps {
                git branch: 'main', credentialsId: 'FENZ01', url: 'https://github.com/FENZ01/projet-Devops.git'
            }
        }
      }
    }
