FROM ubuntu:22.04
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wisecow.sh
EXPOSE 4499
CMD ["/usr/local/bin/wisecow.sh"]
