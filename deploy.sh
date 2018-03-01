#building
cd SpringMVCSecurityXML
mvn clean install

#renaming war file
cd target
echo "build successful"
mv SpringMVCSecurityXML.war amrutha1.war

#copying war file in remote tomcat webapps
scp amrutha.war amrutha@54.244.209.186:/var/lib/tomcat8/webapps
if [ $? = 0 ]
then
	echo "deploy successful"
fi

#checking whether java app is deployed
firefox 54.244.209.186:8080/amrutha


