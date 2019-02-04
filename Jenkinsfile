pipeline{
       stages{
            stage('checkout'){
                git credentialsId: '09f8435e-1546-42bc-aa23-e787ed6ede33', url: 'https://github.com/wkhanvisualpathit/VProfile.git'
            }
            stage('Build'){
                def mvnHome = tool name: 'maven3.6', type: 'maven'
                def mvnCMD = "${mvnHome}/bin/mvn"
                sh "${mvnCMD} clean package"
            }
            stage('nex-rep'){
                nexusArtifactUploader artifacts: [[artifactId: '$BUILD_TIMESTAMP', classifier: '', file: 'target/vprofile-v1.war', type: 'war']], credentialsId: '59d3b2b8-ea9b-4430-9703-3cd3fcb330c0', groupId: 'LP', nexusUrl: '172.31.32.207:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'NX2', version: '$BUILD_ID'
            }
       }
}     
     
