FROM tomcat:8.0
MAINTAINER Ravi Sujith "sujith.chowdary37@gmail.com"
ADD target/myweb-0.0.5.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
