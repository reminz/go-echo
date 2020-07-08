FROM golang:1.11-alpine
RUN mkdir /app
ADD main /app/
EXPOSE 1323
USER 1001
ENTRYPOINT ["/app/main"]