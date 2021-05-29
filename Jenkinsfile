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

        dir('backend/projectname') {
          sh 'dotnet publish'
        }
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
