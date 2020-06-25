const aboutRouter = require('express').Router();
const connection = require('../conf.js');

aboutRouter.get('/', (req, res) => {
  connection.query('SELECT * FROM template', (err, results) => {
    if(err){
      res.status(404).send("Not found");
    } else {
      res.status(200).json(results)
    }
  })
});


module.exports = aboutRouter;
