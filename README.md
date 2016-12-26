# bookstore
demo


# build
* `RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && cnpm install`


# test
* `sleep 20s && pybot -d report -v BROWSER:phantomjs -v  SERVER:${SERVER}:7373 login_tests`
