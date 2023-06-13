FROM alpine:3.18.0

RUN apk update
RUN apk add curl

COPY ./entry.sh ./ntfy-status.sh ./
RUN chmod +x ./entry.sh ./ntfy-status.sh

ENTRYPOINT [ "./entry.sh" ]