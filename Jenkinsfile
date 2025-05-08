pipeline{
    agent any

    environment{
        IMAGE_NAME = 'pythonjenkins'
        CONTAINER_NAME = 'pythonjenkinscontainer'
    }

    stages{
        stage('Clone'){
            steps{
                git branch: 'main', url: 'https://github.com/aditi2003b/python-jenkins.git'
            }
        }
        stage('build'){
            steps{
                script{
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }
        stage('Run'){
            steps{
                script{
                    sh 'docker rm -f $CONTAINER_NAME || true'

                    sh 'docker run -dit --name $CONTAINER_NAME -p 5050:5000 $IMAGE_NAME'
                }
            }
        }
    }

    post{
        success{
            echo "go to https://localhost:5050"
        }
        failure{
            echo "build failed"
        }
    }
}