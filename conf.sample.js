const  mysql = require('mysql');
const  connection = mysql.createConnection({
host :  '', // adresse du serveur
user :  '', // le nom d'utilisateur
password :  '', // le mot de passe
database :  '' // le nom de la base de données
});
module.exports = connection;
// NOTE:
