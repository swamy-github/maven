node('master') 
{
  stage('ContinuousDownload-Test') 
  {
     git 'https://github.com/intelliqittrainings/maven.git'
  }
  stage('ContnuousBuild-Test')
  {
      sh label: '', script: 'mvn package'
  }
  }
