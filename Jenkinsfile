pipeline
{
   /* agent 
    {
        //label 'ubuntu'
        label 'master'
    }*/
    
   /* stage('Pull')
    {
       git 'https://github.com/AMRUTHASALIKE/JavaSample.git'
    }*/
    stages
    {
    stage('Build')
    {
       steps
        {
       sh 'pwd'
       dir('SpringMVCSecurityXML') 
       {
            // some block
            sh 'pwd'
            sh 'mvn clean install'
       }
       sh 'pwd'
        }
    }
    stage('Deploy')
    {
        steps
        {
        dir('SpringMVCSecurityXML/target') 
       {
            // some block
            sh 'sudo cp SpringMVCSecurityXML.war /var/lib/tomcat8/webapps'
       }
        }
    }
    }
}
