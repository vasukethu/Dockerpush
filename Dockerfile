# Pull base image 
From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
COPY /var/lib/jenkins/workspace/MyPipeline_1/webapp/target/webapp.war /usr/local/tomcat/webapps/
