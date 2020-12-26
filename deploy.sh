rm -rf practice
mkdir practice
cd practice
mkdir ant
mkdir maven
cd ant
git clone https://github.com/kiranhiremath13/antrepo.git
cd antrepo
ant
cd ../..
cd maven
git clone https://github.com/kiranhiremath13/java-tomcat-maven-example.git
cd java-tomcat-maven-example
mvn package
cd /var/lib/jenkins/apache-tomcat-9.0.40/bin
./shutdown.sh
cd /var/lib/jenkins/apache-tomcat-9.0.40/webapps
rm -rf *
cp /home/kiran_hiremath13/practice1/practice/ant/antrepo/dist/myweb.war /var/lib/jenkins/apache-tomcat-9.0.40/webapps
cp /home/kiran_hiremath13/practice1/practice/maven/java-tomcat-maven-example/target/java-tomcat-maven-example-3.0-SNAPSHOT.war /var/lib/jenkins/apache-tomcat-9.0.40/webapps
cd /var/lib/jenkins/apache-tomcat-9.0.40/bin
./startup.sh
