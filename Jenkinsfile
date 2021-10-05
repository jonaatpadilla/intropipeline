pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso sencillo en una linea"'
        sh '''
            echo "Pasos multitarea"
            cd /tmp
            ls -lrt
            '''
      }
    }

    stage('test: integration y calidad') {
      steps {
        sh 'echo "Paso de test: Integration y calidad"'
      }
    }

    stage('test: functional') {
      steps {
        sh 'echo "Paso de test: functional"'
      }
    }

    stage('aprobacion') {
      steps {
        sh 'echo "Paso de aprobación"'
      }
    }

    stage('deploy:prod') {
      input {
        message 'Presiona proceed para continuar'
        submitter 'user1, user2'
        parameters {
          string(name: 'username', defaultValue: 'user', description: 'Nombre del usuario que esta presionando el OK')
        }
      }
      steps {
        sh 'echo "Paso de deploy:prod"'
        echo "User: ${username} dijo que OK."
      }
    }

  }
  environment {
    OUTPUT_PATH = './tmp'
  }
}