#!/bin/bash

cd /opt
wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
tar -xvf apache-tomcat-9.0.65.tar.gz
chmod 777 -R apache-tomcat-9.0.65
rm /opt/apache-tomcat-9.0.65/conf/tomcat-users.xml
rm /opt/apache-tomcat-9.0.65/conf/server.xml
cp /home/ubuntu/Tomcat-setup/tomcat-users.xml /opt/apache-tomcat-9.0.65/conf/
cp /home/ubuntu/Tomcat-setup/server.xml /opt/apache-tomcat-9.0.65/conf/
rm /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml
rm /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml
cp /home/ubuntu/Tomcat-setup/manager/context.xml /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml
cp /home/ubuntu/Tomcat-setup/host-manager/context.xml /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml
cd /opt
chmod 777 -R apache-tomcat-9.0.65
cd ~
sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat
startTomcat
