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
       stage('CODE ANALYSIS with SONARQUBE') {

		  environment {
             scannerHome = tool 'sonarqube-4'
          }

          steps {
            withSonarQubeEnv('sonarqube') {
               sh '''${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=vprofile \
                   -Dsonar.projectName=vprofile-repo \
                   -Dsonar.projectVersion=1.0 \
                   -Dsonar.sources=src/ \
                   -Dsonar.login=admin \
                   -Dsonar.password=admin1234 \
                   -Dsonar.java.binaries=target/test-classes/com/visualpathit/account/controllerTest/ \
                   -Dsonar.junit.reportsPath=target/surefire-reports/ \
                   -Dsonar.jacoco.reportsPath=target/jacoco.exec \
                   -Dsonar.java.checkstyle.reportPaths=target/checkstyle-result.xml'''
            }

            //timeout(time: 1, unit: 'MINUTES') {
            //   waitForQualityGate abortPipeline: false
           // }
          }
        }


        stage('Nexus artifact'){
           steps {

    nexusArtifactUploader(
        nexusVersion: 'nexus3',
        protocol: 'http',
        nexusUrl: '172.31.8.147:8081',
        groupId: 'DEV',
        version: '$BUILD_NUMBER',
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
        
    stage('deploy to tomcat'){
     steps{

     deploy adapters: [tomcat8(credentialsId: 'tomcat-creds', path: '', url: 'http://172.31.3.167:8080')], contextPath: 'january-9', war: 'target/vprofile-v1.war'

     } 
    } 
    }
}

