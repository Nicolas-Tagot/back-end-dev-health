const patientRouter = require('express').Router();
const connection = require('../conf.js');

patientRouter.get('/:id', (req, res) => {
  id = req.params.id
  console.log(id)
  connection.query("SELECT * FROM patient", (err, results) => {
    if(err){
      res.status(404).send("Not found");
      console.log(err)
    } else {
      res.status(200).json(results[id])
        }
  })
});


module.exports = patientRouter;
