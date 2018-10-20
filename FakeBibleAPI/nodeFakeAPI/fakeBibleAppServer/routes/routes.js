
var express = require('express');
var router = express.Router();
//var verses = require("./../");
var verses = require("../db.json")

/* GET home page. */
router.get("/:book/:chapter/:verse", function (req, res) {
  var book = req.params.book
  var chapter = req.params.chapter
  var num = req.params.verse;
  res.status(200).send(book);
});

module.exports = router;