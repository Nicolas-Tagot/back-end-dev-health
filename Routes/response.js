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
    const id = req.params.id;
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

//GET ALL RESPONSE WHERE medic = 1
router.get('/medic', (req, res) => {
    connection.query('SELECT * FROM response WHERE medic = 1', (error, results) => {
        if(error) {
            return res.status(500).json({ error: err.message, sql: err.sql });
        }
        return res.status(200).json(results);
    });
});

// GET ALL response WHERE perso = 1
router.get('/perso', (req, res) => {
    connection.query('SELECT * FROM response WHERE perso = 1', (error, results) => {
        if(error) {
            return res.status(500).json({ error: err.message, sql: err.sql });
        }
        return res.status(200).json(results);
    });
});

// GET ALL response WHERE sante = 1
router.get('/sante', (req, res) => {
    connection.query('SELECT * FROM response WHERE sante = 1', (error, results) => {
        if(error) {
            return res.status(500).json({ error: err.message, sql: err.sql });
        }
        return res.status(200).json(results);
    });
});

module.exports = router;