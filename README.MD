You must need docker installed on your pc

To run this server you have to do the following commands

* git clone https://github.com/nicolasmaurotorres/server-docker.git
* cd server-docker
* rm cliente-web -R
* rm server-files-auth -R
* git clone https://github.com/nicolasmaurotorres/client-web.git
* git clone https://github.com/nicolasmaurotorres/server-files-auth.git

Im on windows
* route /P add 172.21.0.0 MASK 255.255.0.0 10.0.75.2

And then build the compose and run
* docker-compose build
* docker-compose up

Go to https://localhost:8080/login
