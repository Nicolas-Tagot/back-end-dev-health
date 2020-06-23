const express = require('express');
const app = express();
const port = 3000;
const connection = require('./conf.js');
const router = express.Router();

const aboutRoute = require('./routes/about');

app.use('/about', aboutRoute);




app.listen(port, (res, req) => {
  console.log("We are here => " + port);
});
