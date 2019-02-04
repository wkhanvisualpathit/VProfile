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
            
       }
}     
     
