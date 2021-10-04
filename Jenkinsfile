pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${TEST_USER_USR}"
        echo "${TEST_USER_PSW}"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Jonathan'
    TEST_USER_USR = credentials('test-user')
    TEST_USER_PSW = credentials('test-password')
  }
}