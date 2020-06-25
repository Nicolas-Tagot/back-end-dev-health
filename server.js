const express = require('express');
const app = express();
const port = 8000;
const connection = require('./conf');
const router = express.Router();

const aboutRoute = require('./Routes/about');
const responseRoute = require('./Routes/response');

app.use(express.json());
app.use(express.urlencoded({ extended : true}));

app.use('/about', aboutRoute);
app.use('/response', responseRoute);


app.listen(port, (res, req) => {
  console.log("We are here => " + port);
});
