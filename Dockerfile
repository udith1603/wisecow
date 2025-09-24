FROM alpine:3.18
RUN apk update && apk add --no-cache \
    fortune-mod \
    cowsay \
    ncat

COPY wisecow.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wisecow.sh
EXPOSE 4499
CMD ["/usr/local/bin/wisecow.sh"]