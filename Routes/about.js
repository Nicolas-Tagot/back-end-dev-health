const aboutRouter = require('express').Router();

aboutRouter.get('/', (req, res) => {
  //connection si besoin
  // resultats
  res.status(200).send('dev-Health vous souhaite la bienvenue !');
});


module.exports = aboutRouter;
