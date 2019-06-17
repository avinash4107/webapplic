pipeline {
            agent {
                        docker {
                                    image : 'mcr.microsoft.com/dotnet/core/sdk:2.1'
                        }
            }
            
stages {
stage ('Checkout') {
            steps {
                  git 'https://github.com/avinash4107/webapplic.git'
            }
}
stage ('Restore PACKAGES') {     
         steps {
             bat "dotnet restore"
          }
        }
stage('Clean') {
      steps {
            bat 'dotnet clean'
       }
    }
stage('Build') {
     steps {
            bat 'dotnet build --configuration Release'
      }
   }
stage('Image Creation') {
     steps {
            bat 'docker build -t webappli .' 
      }
   }
 }
}
