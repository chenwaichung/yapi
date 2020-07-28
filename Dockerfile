FROM node:12-alpine

ADD yapi.tgz /home/
RUN mkdir /api && mv /home/package /api/vendors
RUN cd /api/vendors && \
    npm install --production --registry https://registry.npm.taobao.org

ENV TZ="Asia/Shanghai" HOME="/"
WORKDIR ${HOME}

COPY config.json /api/
EXPOSE 3000

