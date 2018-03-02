#renaming war file
mv ./SpringMVCSecurityXML/target/SpringMVCSecurityXML.war ./SpringMVCSecurityXML/target/amrutha1.war

#copying war file in remote tomcat webapps
scp amrutha1.war amrutha@54.244.209.186:/var/lib/tomcat8/webapps
if [ $? = 0 ]
then
	echo "deploy successful"
fi




