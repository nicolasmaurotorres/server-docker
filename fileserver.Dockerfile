FROM golang

RUN go get -u golang.org/x/net/html/charset
RUN go get github.com/rs/cors
RUN go get github.com/asaskevich/govalidator
RUN go get github.com/dgrijalva/jwt-go
RUN go get github.com/gorilla/mux
RUN go get gopkg.in/mgo.v2

WORKDIR /go/src/fileserver

COPY server-web .

RUN go install fileserver

EXPOSE 8001

CMD ["fileserver"]
