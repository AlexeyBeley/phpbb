PATH_TO_ROOT=~/my-kid
#git clone https://github.com/AlexeyBeley/my-kid.git
#put secretes in the same dir

private_dir:
	mkdir -p ${PATH_TO_ROOT}/private &&\
	cp ../secrets.sh ${PATH_TO_ROOT}/private &&\
	chmod +x ${PATH_TO_ROOT}/private/secrets.sh

web_dir:
	mkdir /var/www/docker_phpbb
	cd /var/www/docker_phpbb
	#ubuntu 20

set_env:
	source ./private/secrets.sh &&\
	echo $SERVER_NAME
	#docker build . --tag horey
	#No ssl
	#docker run -d -e SERVER_NAME -e DBHOST -e DBPORT -e DBNAME -e DBUSER -e DBPASSWD -e TABLE_PREFIX -p 80:80 horey

	#sudo chmod 777 /var/run/docker.sock












