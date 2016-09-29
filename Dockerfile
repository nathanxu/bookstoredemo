FROM  index.tenxcloud.com/tenxcloud/nodejs

RUN mkdir /src
COPY app /src/app
COPY html /src/html
COPY config test server.js package.json run.sh /src/

WORKDIR /src
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org \
	&& cnpm install

EXPOSE 8181

CMD node server.js
