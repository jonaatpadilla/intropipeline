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
      steps {
        sh 'echo "Paso de deploy:prod"'
      }
    }

  }
}