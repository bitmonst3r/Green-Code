var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('Login', { title: 'Green-Code' });
});

module.exports = router;