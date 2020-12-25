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
cd /home/kiran_hiremath13/software/apache-tomcat-9.0.40/bin
./shutdown.sh
cd /home/kiran_hiremath13/software/apache-tomcat-9.0.40/webapps
rm -rf *
cp /home/kiran_hiremath13/practice1/practice/ant/antrepo/dist/myweb.war /home/kiran_hiremath13/software/apache-tomcat-9.0.40/webapps
cp /home/kiran_hiremath13/practice1/practice/maven/java-tomcat-maven-example/target/java-tomcat-maven-example-3.0-SNAPSHOT.war /home/kiran_hiremath13/software/apache-tomcat-9.0.40/webapps
cd /home/kiran_hiremath13/software/apache-tomcat-9.0.40/bin
./startup.sh
~              
