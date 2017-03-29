build:
	echo "Building master"
	cd jenkinsMaster &&	docker build -t jenkins-master .

	echo "Building volume"
	cd jenkinsDataVolume &&	docker build -t jenkins-data .

run:
	docker-compose up -d

destroy:
	docker-compose down

expose-docker-socket:
	docker run -d -v /var/run/docker.sock:/var/run/docker.sock -p 2376:2375 bobrik/socat TCP4-LISTEN:2375,fork,reuseaddr UNIX-CONNECT:/var/run/docker.sock
