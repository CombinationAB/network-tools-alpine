ARG ALPINE_VERSION=3.11
FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache openssh-client nmap tcptraceroute iputils iperf3
