FROM golang:1.11-alpine
WORKDIR /app
RUN go build -o main .
COPY main /app
EXPOSE 1323
USER 1001
ENTRYPOINT ["/app/main"]