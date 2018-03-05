ssh amrutha@54.244.209.186<<'EOF'
if [ $(ls /home/amrutha/backup | wc -l) -ne 0 ]
then 
	touch -r /home/amrutha/backup/ammu_curr.war	/home/amrutha/backup/ammu_prev.war
	mv /home/amrutha/backup/ammu_curr.war	/home/amrutha/backup/ammu_prev.war
fi 
touch -r /var/lib/tomcat8/webapps/amrutha1.war /home/amrutha/backup/ammu_curr.war
cp /var/lib/tomcat8/webapps/amrutha1.war /home/amrutha/backup/ammu_curr.war
EOF

exit
