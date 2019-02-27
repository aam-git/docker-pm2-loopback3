FROM keymetrics/pm2:latest-slim

MAINTAINER info@aamservices.uk

WORKDIR /usr/src/app

COPY ecosystem.config.js .

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-get update && \
    apt-get install -y python build-essential git && \ 
    git clone https://github.com/strongloop/loopback-getting-started.git . && \
    curl -fsSL "https://raw.githubusercontent.com/aam-git/docker-pm2-loopback3/master/ecosystem.config.js" -o ecosystem.config.js
    npm install -g loopback-cli --unsafe && \
    npm install

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
