pipeline{

    agent any
    tools{
        maven "maven-tool"
    }

    environment{
               APP_NAME = "spring-docker-cicd"
               RELEASE_NO= "1.0.0"
               DOCKER_USER= "naresh1234h"
               IMAGE_NAME= "${DOCKER_USER}"+"/"+"${APP_NAME}"
               IMAGE_TAG= "${RELEASE_NO}-${BUILD_NUMBER}"
        }


    stages{

        stage("SCM checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Nareshh98/CI-CD_demo3.git']])
            }
        }

        stage("Build Process") {
            steps {
                script{
                  sh 'mvn clean install'
                  }
            }
        }

        stage("Build Image"){
                    steps{
                        script{
                            sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
                        }
                    }
        }

    }
}


