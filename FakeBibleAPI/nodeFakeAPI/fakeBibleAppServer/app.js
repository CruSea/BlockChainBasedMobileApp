// var createError = require('http-errors');
var express = require('express');
var bodyParser = require("body-parser");
var routes = require("./routes/routes");
// var path = require('path');
// var cookieParser = require('cookie-parser');
// var logger = require('morgan');

//var indexRouter = require('./routes/index');
//var usersRouter = require('./routes/users');

var app = express();
//routes.app();

// // view engine setup
// app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use('/', routes);


/* var server = app.listen(3000, function () {
    console.log("app running on port.", server.address().port);
}); */

module.exports = app;
