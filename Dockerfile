FROM tomcat:10.1-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY *BTBuoi5.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]