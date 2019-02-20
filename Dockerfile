FROM keymetrics/pm2:latest-slim

MAINTAINER info@aamservices.uk

WORKDIR /root

COPY ecosystem.config.js ecosystem.config.js

ENV NPM_CONFIG_LOGLEVEL warn

RUN npm install --production && \
    apt-get update && \
    apt-get install -y python build-essential git && \ 
    npm install -g loopback-cli && \
    git clone https://github.com/strongloop/loopback-getting-started.git loopback

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
