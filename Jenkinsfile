pipeline{
        agent any
              stages{
                  stage('git clone'){
                                  steps{
                                      git 'https://github.com/madhu513/VProfile.git'
                                        }
                  stage('Build'){
                                steps{
                                sh 'mvn clean package'
                                }
                                }
                                    }
                    }
}
