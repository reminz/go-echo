FROM golang:1.11-alpine
RUN mkdir /app
COPY main.go /app
WORKDIR /app
RUN go build -o main .
EXPOSE 1323
USER 1001
ENTRYPOINT ["/app/main"]