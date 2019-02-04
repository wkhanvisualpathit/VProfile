pipeline{
       stages{
             stage('SCM Checkout'){
                 git 'https://github.com/wkhanvisualpathit/VProfile.git' 
             }
            stage('Build'){
                def mvnHome = tool name: 'maven3.6', type: 'maven'
                def mvnCMD = "${mvnHome}/bin/mvn"
                sh "${mvnCMD} clean package"
            }
            
       }
}     
     
