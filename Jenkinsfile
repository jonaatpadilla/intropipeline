pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "Hello ${params.Apellido}!"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Jonathan'
  }
  parameters {
    string(name: 'Apellido', defaultValue: 'Padilla', description: 'Who should I say hi to?')
  }
}