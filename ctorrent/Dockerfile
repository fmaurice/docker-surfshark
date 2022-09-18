FROM debian:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y locales procps ctorrent
RUN rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

ENTRYPOINT ["top", "-b"]
CMD ["-c"]

