pipeline {
  agent { label 'linux' }
  options {
    buildDiscarder (logRotator(numToKeepStr: '2'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials ('vasu_docker')
  }
  stages {
    stage ('Git checkout') {
      steps{
        sh "git clone https://github.com/vasukethu/Dockerpush.git"
      }
    }
    stage ('Build') {
        steps {
            sh 'docker build -t ketuvasuops/vkopsrepo:latest .'
        }
    }
    stage ('Login') {
        steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        }
    }
    stage ('Push') {
       steps {
            sh 'docker push ketuvasuops/vkopsrepo:latest'
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
}
