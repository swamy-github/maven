node('master') 
{
  stage('ContinuousDownload')
  {
    git 'https://github.com/selenium-saikrishna/maven.git'
  }
  stage('ContinuousBuild')
  {
      sh label: '', script: 'mvn package'
  }
  stage('ContinuousDeployment')
  {
      sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/Spipeline/webapp/target/webapp.war ubuntu@172.31.89.159:/var/lib/tomcat8/webapps/testenv.war'
  }
  stage('ContinuousTesting')
  {
      git 'https://github.com/selenium-saikrishna/FunctionalTesting.git'
      sh label: '', script: 'java -jar /home/ubuntu/.jenkins/workspace/Spipeline/testing.jar'
  }
  stage('ContinuousDelivery')
  {
      input message: 'Waiting for Approval from Delivery Manager', submitter: 'Srinivas'
      sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/Spipeline/webapp/target/webapp.war ubuntu@172.31.93.16:/var/lib/tomcat8/webapps/prodenv.war'
  }
  
  
  
}
