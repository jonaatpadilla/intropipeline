pipeline {
  agent {
    label 'openjdk11.0.12'
  }
  stages {
    stage('Say Hello') {
      steps {
        echo 'Hello World!'
        sh 'java -version'
      }
    }

  }
}