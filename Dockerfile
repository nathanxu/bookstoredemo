FROM  index.tenxcloud.com/tenxcloud/nodejs

RUN mkdir /src
ADD app /src/app
ADD config /src/config
ADD test /src/test
ADD server.js /src
ADD package.json /src

WORKDIR /src
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && cnpm install

EXPOSE 8181

CMD node server.js
