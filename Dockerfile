FROM alpine:latest
LABEL maintainer.name="Matteo Pietro Dazzi" \
    maintainer.email="matteopietro.dazzi@gmail.com" \
    version="1.0.4" \
    description="OpenVPN client configured for SurfShark VPN"
WORKDIR /vpn
ENV SURFSHARK_USER=
ENV SURFSHARK_PASSWORD=
ENV SURFSHARK_COUNTRY=
ENV SURFSHARK_CITY=
ENV SURFSHARK_FASTEST_SERVER=true
ENV OPENVPN_OPTS=
ENV CONNECTION_TYPE=tcp
ENV LAN_NETWORK=
HEALTHCHECK --interval=60s --timeout=10s --start-period=30s CMD curl -L 'https://ipinfo.io'
COPY startup.sh .
RUN apk add --update --no-cache openvpn wget unzip coreutils curl && \
    chmod +x ./startup.sh
ENTRYPOINT [ "./startup.sh" ]
