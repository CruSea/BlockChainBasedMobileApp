
var express = require('express');
var router = express.Router();
// Requiring db.json file
var verses = require("../db.json")

/* GET book verse. */
router.get("/:book/:chapter/:verse", function (req, res) {
  // parsing book
  var book = req.params.book.toLowerCase()
 
  // parsing chapter
  var chapter = req.params.chapter

  // parsing verse
  var verse = req.params.verse

  var obj = verses

  //looping through db.json
  for (i in obj.verses) {
    if (book == obj.verses[i].book_name.toLowerCase() && chapter == obj.verses[i].chapter
      && verse == obj.verses[i].verse) {
      res.status(200).send(obj.verses[i]);
      return;
    }
  }
  res.status(404).json({ "msg": "Object not found" });
});

module.exports = router;