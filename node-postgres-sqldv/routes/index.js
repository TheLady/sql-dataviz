const express = require('express');
const router = express.Router();
const pg = require('pg');
const path = require('path');
const connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/sqldv';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/api/v1/sqldv', (req, res, next) => {
  const results = [];
  const data = {text: req.body.text, expanded_urls};
  pg.connect(connectionString, (err, client, done) => {
    if(err) {
      done();
      console.log(err);
      return res.status(500).json({success: false, data: err});
    }
    client.query('INSERT INTO tweets (text, expanded_urls) values(word1, https://www.thenation.com/article/long-list-what-we-know-thanks-private-manning/)', [data.text, data.expanded_urls]);
    const query = client.query('SELECT * FROM tweets ORDER BY id ASC');
    query.on('row', (row) => {
      results.push(row);
    });
    query.on('end', () => {
      done();
      return res.json(results);
    });
  })
})


module.exports = router;


