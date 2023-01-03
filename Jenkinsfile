pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dckr_pat_sO6um_oapBKNplsSiA0wHBXppJ4')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t nginx:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
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
