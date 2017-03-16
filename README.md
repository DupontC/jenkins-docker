# Start a Jenkins 2.0 with a basic admin user
The aim of this project is to get rid of all painful configuration that you need to do when you start a Jenkins.

In this configuration I used Jenkins master in a docker container with a volume docker container for the jenkins_home. By this way you don't have to worry to remove the jenkins master and recreate an other one. You can also easily add jenkins slave by the command `$ docker run --name myJenkinsSlave -p 8080:8080 -p 50001:50001 --env JENKINS_SLAVE_AGENT_PORT=50001 jenkins`

Default user is `admin` and the password is `admin`

## Provided configuration
This version of jenkins allready come with docker cli and manven. Don't forget to override the socker of user using the following command `/var/run/docker.sock:/var/run/docker.sock`

## Customise the initalisation of jenkins
When you run jenkins it will run the scripts inside the following directory `/usr/share/jenkins/ref/init.groovy.d`. You can make you own scripts for instance setting up your createntials to a git repository.
