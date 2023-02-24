#jdk 설치
sudo apt install -y openjdk-8-jdk-headless
#톰캣
sudo apt install -y tomcat9
#git
sudo apt install -y git
git clone https://github.com/enenen010/testVegerent1.git

#maven 설치 및 배포
sudo apt install -y maven
cd testVegerent1/
mvn package

sudo rm -rf /var/lib/tomcat9/webapps/ROOT/
sudo cp /home/vagrant/testVegerent1/target/day56.war /var/lib/tomcat9/webapps/ROOT.war



#mysql 설치
sudo apt install -y mysql-server-8.0

sudo mysql -u root < /home/vagrant/testVegerent1/src/main/sql/init.sql
sudo systemctl restart mysql
