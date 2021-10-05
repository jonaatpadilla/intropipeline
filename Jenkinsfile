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
        sh 'cd /var/jenkins_home/workspace/intropipeline_master'
        sh './myscript.sh'
      }
    }

    stage('test: functional') {
      when {
        branch 'test'
      }
      steps {
        sh 'echo "Ejecucion de pruebas en rama test"'
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
          string(name: 'username', defaultValue: 'Jona', description: 'Nombre del usuario que esta presionando el OK')
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
    }

    failure {
      echo 'Error en el pipeline del ejercicio del curso de docker'
    }

    aborted {
      echo 'No termino de correr el pipeline, fue forzado a terminar'
    }

  }
}