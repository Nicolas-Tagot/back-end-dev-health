const express = require('express');
const app = express();
const connection = require('../conf.js');
const router = express.Router();

router.post('/', (req, res) => {
    const newResponse = req.body;
    connection.query('INSERT INTO response SET ?', [newResponse],
    (err, results) => {
        if(err) {
            console.log(err);
            return res.status(500).json({
                error: err.message,
                sql : err.sql
            });
        }
        res.json(results)
    });
});

router.get('/', (req, res) => {
    connection.query('SELECT * FROM response', 
    (err, results) => {
        if(err) {
            return res.status(500).json({
                error: err.message,
                sql : err.sql
            });
        }
        res.json(results)
    });
});

module.exports = router;