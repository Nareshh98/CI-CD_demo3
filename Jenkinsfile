pipeline{

    agent any
    tools{
        maven "maven-tool"
    }


    stages{

        stage("SCM checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Nareshh98/CI-CD_demo3.git']])
            }
        }

        stage("Build Process") {
            steps {
                script {
                    bat './mvnw clean install'
                }
            }
        }


        stage("Build Image"){
            steps{
                script{
                    bat 'docker build -t challnaresh/springboot:1.0.'
                }
            }
        }
    }
}


