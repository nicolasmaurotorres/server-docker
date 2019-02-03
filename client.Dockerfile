FROM node

RUN apt update && apt install -y git python

WORKDIR /usr/temp

RUN mkdir /usr/src/app

RUN git clone http://mtorres:Pladema2018@git.pladema.net/tf-torres/cliente-web.git /usr/temp 

RUN cat package.json >> /usr/src/app/package.json

WORKDIR /usr/src/app

RUN npm install

WORKDIR /usr/temp

COPY [".","/usr/src/app"]

EXPOSE 8000

RUN sed "s:--open --port=8000: --host 0.0.0.0:" -i package.json

CMD ["npm", "run", "dev"]
