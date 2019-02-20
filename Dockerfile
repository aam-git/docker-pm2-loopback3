FROM keymetrics/pm2:latest-slim

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

COPY ecosystem.config.js

RUN apt-get update && \
    apt-get install -y python build-essential
        
RUN npm install -g loopback-cli

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
