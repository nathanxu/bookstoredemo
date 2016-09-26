FROM  index.tenxcloud.com/tenxcloud/nodejs

RUN mkdir /src
COPY app /src/app
COPY config /src/config
COPY test /src/test
COPY server.js /src
COPY package.json /src

WORKDIR /src
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org \
	&& cnpm install

EXPOSE 8181

CMD node server.js
