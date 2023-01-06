pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dckr_pat_SVgmqJlCD4AFMXQy4blUmTht0-c')
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
