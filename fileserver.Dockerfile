FROM golang

RUN go get -u golang.org/x/net/html/charset
RUN go get github.com/rs/cors
RUN go get github.com/asaskevich/govalidator
RUN go get github.com/dgrijalva/jwt-go
RUN go get github.com/gorilla/mux
RUN go get gopkg.in/mgo.v2

WORKDIR /go/src/fileserver

RUN git clone http://mtorres:Pladema2018@git.pladema.net/tf-torres/server-web.git .

RUN sed "s:localhost:database:" -i database.go

RUN sed "s:/home/maro/Desktop/data/pvw/data:/go/src/fileserver/data:" -i database.go

RUN sed '/Dial/asession.DB("admin").Login("admin","admin")' -i database.go

RUN go install fileserver

EXPOSE 8001

CMD ["fileserver"]
