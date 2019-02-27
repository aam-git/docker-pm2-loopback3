FROM keymetrics/pm2:latest-slim

MAINTAINER info@aamservices.uk

WORKDIR /usr/src/app

COPY ecosystem.config.js .

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-get update && \
    apt-get install -y python build-essential git && \ 
    npm install -g loopback-cli --unsafe && \
    git clone https://github.com/strongloop/loopback-getting-started.git loopback && \
    npm install /usr/src/app/loopback

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
