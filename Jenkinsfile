def workspace; 
node
{
    stage('checkout')
    {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bc02c2d3-ac85-4fa8-8d95-3b7f6f038097', url: 'https://github.com/wkhanvisualpathit/VProfile.git']]])
        workspace pwd()    
    }
    stage('static code Analysis')
    {
        echo 'static code Analysis'
    }
    stage('Build')
    {
        echo 'Build the code'
    }
    stage('Unit Testing')
    {
        echo 'Unit Testing'
    }
    stage ('Delivery')
    {
        echo 'Delivery the code'
    }


}
