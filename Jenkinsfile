pipeline {
    agent {label 'ec2-agent'}

    stages {
        stage('Cloning our Git') {
            steps {
                git url:'https://github.com/mahmoud254/jenkins_nodejs_example',
                    credentialsId: 'github_key'

                
            }
        }
        stage('Building our image'){
            steps {
                sh "docker build . -t IsraaElsayed/myapp:$BUILD_NUMBER" 
            }
        }
        stage('Push image') {
             steps {
                withDockerRegistry([ credentialsId: "dockerhubaccount", url: "" ]) {
                    sh "docker push IsraaElsayed/myapp:$BUILD_NUMBER"
                }
             }
        }
    }
}