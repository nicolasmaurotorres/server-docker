FROM node

RUN apt update && apt install -y git python

WORKDIR /usr/app/client

COPY cliente-web/package.json .

RUN npm install

COPY cliente-web .

EXPOSE 8000

CMD ["npm", "run", "dev"]
