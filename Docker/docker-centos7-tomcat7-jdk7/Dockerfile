# CentOS 7 + Oracle JDK 7 + Docker Registry UI

FROM centos:centos7
MAINTAINER yuj <yuj@cn.fujitsu.com>

ENV http_proxy http://10.167.129.21:8080
ENV https_proxy http://10.167.129.21:8080

RUN yum install -y java-1.7.0-openjdk.x86_64 wget tar

ENV TOMCAT_MAJOR_VERSION 7
ENV TOMCAT_MINOR_VERSION 7.0.63

WORKDIR /opt/

RUN wget -O /opt/tomcat7.tar.gz http://www.us.apache.org/dist/tomcat/tomcat-7/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz -q && \
    tar -xzf /opt/tomcat7.tar.gz && \
    rm /opt/tomcat7.tar.gz && \
    ln -s apache-tomcat-$TOMCAT_MINOR_VERSION tomcat
ADD create_tomcat_admin_user.sh /opt/create_tomcat_admin_user.sh
ADD start.sh /opt/start.sh
ENV CATALINA_HOME /opt/tomcat

EXPOSE 8080
CMD ["/opt/start.sh"]


