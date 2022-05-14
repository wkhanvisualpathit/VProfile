pipeline {
    agent any
  stages{
    stage (checkout scm) {
       checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Gchennareddy/VProfile.git']]])
    }
    stage (build) {
       sh "mvn package"
    }
  }
}
    
