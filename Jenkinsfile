pipeline {
  agent any
  stages {
    stage('corriendo en paralelo') {
      parallel {
        stage('a') {
          steps {
            echo 'Test en paralelo en Linux'
          }
        }

        stage('b') {
          steps {
            echo 'Test en paralelo en Windows'
          }
        }

      }
    }

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
  post {
    always {
      echo 'El pipeline se ejecuto exitosamente!'
      mail(to: 'jpadilla@na-at.com.mx', subject: 'Pipeline exitoso', body: 'El pipeline se ejecuto exitosamente')
    }

    failure {
      echo 'Error en el pipeline del ejercicio del curso de docker'
      mail(to: 'jpadilla@na-at.com.mx', subject: 'Pipeline fallido', body: 'Error en el pipeline del ejercicio del curso de docker')
    }

    aborted {
      mail(to: 'jpadilla@na-at.com.mx', subject: 'Pipeline abortado', body: 'El pipeline se forzo a terminar')
      echo 'No termino de correr el pipeline, fue forzado a terminar'
    }

  }
}