# Tomcat Hello World Sample

This project contains a simple servlet application.

## Run the app locally

1. [Install Apache Maven][]
1. [Install Apache Tomcat][]
1. cd into this project's root directory
1. Run `mvn clean install` to build the `target/TomcatHelloWorldApp.war` file
1. Copy `target/TomcatHelloWorldApp.war` to your Tomcat's `webapps` folder
1. Start Tomcat by running its `bin/startup.sh` script
1. Access the running app in a browser at <http://localhost:8080/TomcatHelloWorldApp/>
 
[Install Apache Maven]: http://maven.apache.org/
[Install Apache Tomcat]: http://tomcat.apache.org/
