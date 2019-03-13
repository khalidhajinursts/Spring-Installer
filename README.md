# Sprint-Installer

## sping.service

```sh

[unit]
Description=Spring

[Service]
User=Spring
WorkingDirectory=/home/spring
ExecStart=/usr/bin/java -jar /home/spring/app.jar

[Install]

WantedBy=multi-user.target

```
## install.sh

 ```sh
 #create spring user
 sudo useradd -m -s /bin/bash spring
 #install java + git+maven
 sudo apt install -y openjdk-8-jre openjdk-8-jdk git
 sudo apt install -y maven
 #copy the jar file to the spring directory
 sudo cp spring.service /etc/systemd/system
 ```
