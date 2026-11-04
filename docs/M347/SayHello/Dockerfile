FROM alpine:latest

WORKDIR /app

COPY sayhello.sh .

RUN chmod +x sayhello.sh

ENTRYPOINT ["/app/sayhello.sh"]
