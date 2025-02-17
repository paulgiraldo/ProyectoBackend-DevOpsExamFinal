pipeline {
    agent none

    stages {
        stage('Testear conexion SHH con servidor digital Ocean') {
            when {
                branch 'jenkins'
            }
            agent any

            steps {
                sshagent(['do-droplet-ssh-key']) {
                    sh 'ssh -o StrictHostKeyChecking=no root@204.48.22.13 "echo conexion correcta"'
                }
            }
        }

        stage('Desplegar proyecto node a Digital Ocean') {
            when {
                branch 'jenkins'
            }
            agent any

            steps {
                sshagent(['do-droplet-ssh-key']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no root@204.48.22.13 "
                        ls ~/codigo/paulgiraldo
                        "
                    '''
                }
            }
        }
    }

    post {
        success {
            mail to: 'paulgiraldo72@gmail.com',
                 subject: "Pipeline ${env.JOB_NAME} ejecucion correcta",
                 body: """
                 Hola,

                 El pipeline '${env.JOB_NAME}' (Build #${env.BUILD_NUMBER}) ha finalizado de manera correcta

                 Los detalles se pueden revisar en el siguiente enlace:
                 ${env.BUILD_URL}

                 Saludos,
                 Jenkins Server ...
                 """
        }
    }
}