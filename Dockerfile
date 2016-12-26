FROM  index.tenxcloud.com/tenxcloud/nodejs

RUN mkdir /src
COPY app /src/app
COPY html /src/html
COPY config /src/config
COPY test /src/test
COPY server.js package.json run.sh /src/

WORKDIR /src
ADD node_modules /src

EXPOSE 8181

CMD node server.js
