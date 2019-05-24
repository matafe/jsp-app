FROM tomcat:9.0.20-jre8-alpine

LABEL description="JSP Web application deployed on Tomcat 9 with java 8"

MAINTAINER Mauricio Ferraz <matafe@gmail.com>

EXPOSE 8080

RUN rm -rf $CATALINA_HOME/webapps/docs \
 rm -rf $CATALINA_HOME/webapps/examples \
 rm -rf $CATALINA_HOME/webapps/ROOT

COPY ./config/tomcat9/conf/* $CATALINA_HOME/conf/
COPY ./config/tomcat9/webapps/manager/META-INF/* $CATALINA_HOME/webapps/manager/META-INF/
COPY ./target/*.war $CATALINA_HOME/webapps/

# This values can be overriden by -e JAVA_OPTS='newValues' docker run command line.
ENV JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxMetaspaceSize=256m \
-XX:+HeapDumpOnOutOfMemoryError \
-Dfile.encoding=utf-8 "

CMD ["catalina.sh", "run"]