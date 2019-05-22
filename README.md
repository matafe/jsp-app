# Simple JSP 2 webapp on Tomcat

## Checkout 
```bash
git clone https://github.com/matafe/jsp-app.git
````

## Build
```bash
mvn clean package
```

## Run
```bash
mvn tomcat7:run
````

http://localhost:8080/jsp-app

## Deploy in other Tomcat Server

```bash
export TOMCAT_HOME=/opt/java/apache-tomcat-8.5.31
````

Add to *TOMCAT_HOME/conf/tomcat-users.xml*

`<user username="tomcat" password="tomcat" roles="manager-script"/>`

```bash
TOMCAT_HOME/bin/catalina.sh run
mvn tomcat7:deploy
```

## Maven App Creation
 mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4 -DgroupId=com.matafe -DartifactId=jsp-app -Dversion=1.0-SNAPSHOT -Dpackage=com.matafe.jsp-app -DinteractiveMode=false

## Git Repo

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/matafe/jsp-app.git
git push -u origin master
```