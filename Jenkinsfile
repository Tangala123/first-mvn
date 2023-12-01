pipeline {
  agent any 
  stages {
    stage ("maven"){
      when {
        branch "develop"
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
