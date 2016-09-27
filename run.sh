sed -i -e 's/YOUR_DB_URI/$MONGO_URL/g' config/default.json
node server.js
