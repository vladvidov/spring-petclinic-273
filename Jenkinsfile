pipeline {
 agent any;
 stages {
  stage('Code Quality') {
   steps {
    sh 'echo checking code quality'
   }
  }
  stage('Unit Tests') {
   steps {
    sh 'echo Testing the Applications'
   }
  }
  stage('Build') {
   steps {
    sh 'echo Creating application Package'
    sh './mvnw package'
   }
   post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
    success {
	archiveArtifacts artifacts: 'target/*.jar'
	//	archiveArtifacts 'target/*.jar'
        fingerprint 'target/*.jar'
    }
   }			
  }
  stage('Delivery') {
   steps {
    sh 'echo Uploading the artifact to a repository'
   }
  }
  stage('Deploy') {
   steps {
    sh 'echo Deploying the Application'
   }
  }
 }
}
