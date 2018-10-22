FROM node

RUN apt update && apt install -y git python

WORKDIR /usr/app/client

ADD https://api.github.com/repos/nicolasmaurotorres/thesis-client-cleaner/git/refs/heads/master /usr/app/client/version.json

RUN git clone https://github.com/nicolasmaurotorres/thesis-client-cleaner /usr/app/code

#RUN git init .
#RUN git remote add -t \* -f origin https://github.com/nicolasmaurotorres/thesis-client-cleaner.git
#RUN git checkout master

RUN sed "s|--open --port=8000| --host 0.0.0.0|g" -i /usr/app/code/package.json

RUN sed "s|sessionManagerURL : 'http://localhost:8080|sessionManagerURL : 'http://0.0.0.0:8082|g" -i /usr/app/code/src/js/config/renderConfig.js

WORKDIR /usr/app/code

RUN npm install

EXPOSE 8000

CMD ["npm", "run", "dev"]
