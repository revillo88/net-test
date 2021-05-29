pipeline {
  agent {
    node {
      label 'master'
    }
  }

  environment {
    // net = tool 'msnet'
    PATH = "$PATH"
  }

  stages {
    stage('init Project') {
      steps {
        sh 'echo hallo'
        sh 'echo $PATH'
        sh 'dotnet --version'
        sh 'dotnet publish'
        sh 'echo ende'
      }
    }
  }
}
