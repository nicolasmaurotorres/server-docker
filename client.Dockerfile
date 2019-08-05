FROM node

RUN apt update && apt install -y git python

WORKDIR /usr/app/client

COPY cliente-web/package.json .

RUN npm install

COPY cliente-web .

# RUN sed "s|--open --port=8000| --host 0.0.0.0|g" -i package.json

# RUN sed "s|sessionManagerURL : 'http://localhost:8080|sessionManagerURL : 'http://localhost:8082|g" -i /usr/app/client/src/js/config/renderConfig.js

EXPOSE 8000

CMD ["npm", "run", "dev"]
