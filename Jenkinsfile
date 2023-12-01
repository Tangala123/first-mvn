pipeline {
  agent any 
  stages {
    stage("Git") {
      when {
        branch "main"
      }
       steps {
         git branch: "main", url: "https://github.com/Tangala123/first-mvn"
       }
    }
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
