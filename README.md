# Start a Jenkins 2.0 with a basic admin user
The aim of this project is to get rid of all painfull configurations that you need to do when you start a Jenkins.

Default user is `admin` and the password is `admin`

## Provided configuration
This version of jenkins allready come with docker cli and manven. Don't forget to override the socker of user using the following command `/var/run/docker.sock:/var/run/docker.sock`

## Customise the initalisation of jenkins
When you run jenkins it will run the scripts inside the following directory `/usr/share/jenkins/ref/init.groovy.d`. You can make you own scripts for instance setting up your createntials to a git repository.
