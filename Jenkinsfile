pipeline {
  agent {
    label 'openjdk11'
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