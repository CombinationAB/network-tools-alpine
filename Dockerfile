ARG ALPINE_VERSION=3.11
FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache curl openssh-client nmap tcptraceroute iputils iperf3
