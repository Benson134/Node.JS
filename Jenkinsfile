pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker credential')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t nginx:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo dckr_pat_SVgmqJlCD4AFMXQy4blUmTht0-c'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push nginx:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
