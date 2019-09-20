FROM node:lts-slim

LABEL repository="https://github.com/jakejarvis/twilio-action"
LABEL homepage="https://jarv.is/"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qqy && \
    apt-get install -qqy --no-install-recommends libsecret-1-dev && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# ngrok doesn't install without `--unsafe-perm=true`, should be "safe" here
# https://github.com/inconshreveable/ngrok/issues/429
RUN npm install -g twilio-cli --unsafe-perm=true

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
