pipeline {
  agent any
  stages{
    stage ('checkout scm'){
        steps{
           git 'https://github.com/Gchennareddy/VProfile.git'
        }
    }
    stage ('build') {
       sh "mvn package"
    }
  }
}
    
