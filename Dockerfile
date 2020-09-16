ARG ALPINE_VERSION=3.11

FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache bind-tools curl openssh-client openssh-server nmap tcptraceroute iputils iperf3 bash python3 netcat-openbsd
RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev py3-pip python3-dev make \
 && pip3 --no-cache-dir install azure-cli \
 && apk del --purge build
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v1.18.8/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl && kubectl version --client


CMD [ "/bin/bash" ]
