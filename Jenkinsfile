node('master') 
{
  stage('ContinuousDownload') 
  {
     git 'https://github.com/intelliqittrainings/maven.git'
  }
  stage('ContnuousBuild')
  {
      sh label: '', script: 'mvn package'
  }
  stage('ContinuousDeployment')
  {
      sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/ScriptedPipeline/webapp/target/webapp.war ubuntu@172.31.88.210:/var/lib/tomcat8/webapps/qaapp.war'
  }
  stage('ContinuousTesting')
  {
      git 'https://github.com/selenium-saikrishna/FunctionalTesting.git'
      sh label: '', script: 'java -jar /home/ubuntu/.jenkins/workspace/ScriptedPipeline/testing.jar'
  }
  stage('ContinuosDelivery')
  {
      
      input message: 'Waiting for Approval from the Delivery Manager!', submitter: 'srinivas'
       sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/ScriptedPipeline/webapp/target/webapp.war ubuntu@172.31.89.71:/var/lib/tomcat8/webapps/prodapp.war'
  }
}
