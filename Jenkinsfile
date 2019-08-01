node('master') 
{
  stage('ContinuousDownload_Mast') 
  {
    git 'https://github.com/intelliqittrainings/maven.git'
  } 
  stage('ContinuousBuild_Mast')
  {
      sh label: '', script: 'mvn package'
  }
  stage('ContinuousDeployment_Mast')
  {
     sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/ScriptedPipeline@2/webapp/target/webapp.war ubuntu@172.31.36.247:/var/lib/tomcat8/webapps/testwebapp.war'      
  }
  
  
  
  
  
}
