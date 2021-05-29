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
          zip zipFile: 'client.zip', archive: false, dir: './bin/Debug/net5.0/publish/'
          archiveArtifacts artifacts: 'client.zip', fingerprint: true
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
            zip zipFile: 'gui.zip', archive: false, dir: './dist/project/'
            archiveArtifacts artifacts: 'gui.zip', fingerprint: true
        }
        sh 'echo ende'
      }
    }
  }
}
