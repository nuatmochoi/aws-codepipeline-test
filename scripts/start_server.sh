#!/bin/bash
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080

cd /home/ec2-user
chmod +x ./appspec_java-1.0-SNAPSHOT.jar

nohup java -jar appspec_java-1.0-SNAPSHOT.jar > /dev/null 2> /dev/null < /dev/null &

touch ok
echo $(pwd)
