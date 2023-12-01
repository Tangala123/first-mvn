pipeline {
  agent any 
  stages {
    stage ("maven"){
      when {
        branch "main"
      }
      steps {
        sh "mvn clean package"
      }
    }
    stage ("Deploy"){
      when {
        branch "develop"
      }
      steps{
        echo " Common Soon..."
      }
    }
  }
}
