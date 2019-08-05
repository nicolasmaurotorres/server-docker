You must need docker installed on your pc

To run this server you have to do the following commands

git clone http://git.pladema.net/tf-torres/server-docker.git
cd server-docker
rm cliente-web -R
rm server-web -R
git clone http://git.pladema.net/tf-torres/cliente-web.git
git clone http://git.pladema.net/tf-torres/server-web.git

Im on windows
route /P add 172.21.0.0 MASK 255.255.0.0 10.0.75.2

docker-compose build
docker-compose up
