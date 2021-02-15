var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.send('API from express to React is working properly!');
});

module.exports = router;