ssh amrutha@54.244.209.186<<'EOF'
if [ $(service tomcat8 status | grep not-found | wc -l) -gt 0 ]
then
	echo "tomcat8 is not installed "
	echo "installing tomcat8"
	sudo apt-get install -y tomcat8
elif [ $(service tomcat8 status | grep dead | wc -l) -gt 0 ]
then
	echo "tomcat not started"
	echo "starting tomcat"
	sudo service tomcat8 start
else
	echo "tomcat is running"	
fi

sudo setfacl -m u:jenkins:rwx /var/lib/tomcat8/webapps
EOF

exit
