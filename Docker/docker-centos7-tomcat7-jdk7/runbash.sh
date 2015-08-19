ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
echo "ENVBASH=$ENVBASH"
docker run --rm -t -i fish/centos7-tomcat7-jdk7:latest $ENVBASH ${@:2}

