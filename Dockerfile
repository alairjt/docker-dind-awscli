FROM docker:dind

RUN apk update && \
    apk upgrade && \
    apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make && \
    apk add --no-cache bash git openssh && \
    apk add --no-cache xvfb gtk+3.0 libnotify-dev gconf nss libxscrnsaver alsa-lib-dev

RUN pip install awscli
