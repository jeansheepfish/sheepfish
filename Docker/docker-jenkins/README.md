step1: 
  download jenkins's war file from http://mirrors.jenkins-ci.org/war/latest/jenkins.war
step2:
  save the war file to /opt/jenkins.war
step3:
  buile the docker image.
    docker build -t fish/jenkins .		
step4:
  run the service on docker.
    docker run -p 8080:8080 fish/jenkins
