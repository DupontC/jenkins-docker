build:
	echo "Building master"
	cd jenkinsMaster &&	docker build -t jenkins-master .

	echo "Building volume"
	cd jenkinsDataVolume &&	docker build -t jenkins-data .

run:
	docker-compose up -d
