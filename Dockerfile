FROM ubuntu
MAINTAINER "INFO@GAgroups.com"
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
ENV JAVA_HOME /usr
RUN apt-get install git -y
RUN apt-get install maven -y
RUN apt-get install wget -y
ADD apache-tomcat-9.0.55.tar.gz /root
COPY target/apple.war /root/apache-tomcat-9.0.55/webapps
ENTRYPOINT /root/apache-tomcat-9.0.55/bin/startup.sh && bash
RUN apt-get install openssh-server -y
ENTRYPOINT service ssh start && bash
