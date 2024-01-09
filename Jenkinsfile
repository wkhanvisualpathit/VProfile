pipeline {
    agent any
    
    tools {
        jdk "java-8"
        maven "maven-3"
    }
    stages {
        stage ('clone'){
            steps {
                 git "https://github.com/komalkhiratkar/VProfile.git"
            }
        }
        stage ('test'){
            steps {
                echo " running test cases"
            }
        }
        stage ('build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Nexus artifact'){
           steps {

    nexusArtifactUploader(
        nexusVersion: 'nexus3',
        protocol: 'http',
        nexusUrl: '172.31.8.147:8081',
        groupId: 'DEV',
        version: $'BUILD_NUMBER',
        repository: 'Vprofile-repo',
        credentialsId: 'nexus-creds',
        artifacts: [
            [artifactId: 'vprofile',
             classifier: '',
             file: 'target/vprofile-v1.war',
             type: 'war']
        ]
     )

        }
      }
        
    }
}

