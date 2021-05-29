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
        sh 'dotnet publish -p ./backend/projectname/'
        sh 'echo ende'
      }
    }

    stage('second stage') {
      steps {
        sh 'echo hallo'
        dir('client') {
            sh 'npm install'
        }
        sh 'echo ende'
      }
    }

    stage('3 stage') {
      steps {
        sh 'echo hallo'
        dir('client') {
            sh 'ng build'
        }
        sh 'echo ende'
      }
    }
  }
}
