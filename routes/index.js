const express = require('express');
const router = express.Router();
const database = require('../database');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'SQL DATA VIZ!!!' });
});

router.get('/tweets', (req, res, next) => {
  database.query('SELECT * FROM tweets', (error, result) => {
    if (error) return res.status(500).json({error: error})
    res.json(result.rows)
  })
})


module.exports = router;
