# spark docker
* spark 1.6.2
* java-8

git clone repository

## Master
	cd spark-docker/master
	sudo docker build -t garnachod/spark-master:0.0 .
	sudo docker run --name spark-master --net=mynet --ip <IP> -d garnachod/spark-master:0.0

open navigator for testing -> <IP>:8080

## Slaves
	cd spark-docker/slaves
	sudo docker build -t garnachod/spark-slave:0.0 .
	sudo docker run --name spark-slave-1 --link spark-master:spark-master --net=mynet --ip <IP> -d garnachod/spark-slave:0.0
