const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const config = require('./src/config/config');
const morgan = require('./src/config/morgan');

const routes = require('./src/routes/v1');
const { errorConverter, errorHandler } = require('./src/middlewares/error');
const ApiError = require('./src/utils/ApiError');

const app = express();

app.use(morgan.successHandler);
app.use(morgan.errorHandler);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


//mysql connection
const mysql = require('mysql');

const pool = mysql.createPool({
  host: config.mysql.url,
  user: config.mysql.username,
  password: config.mysql.password,
  database: config.mysql.database,

});

pool.getConnection(function (err, connection) {
  if (err) throw err;
  console.log('mysql database connected;');

});

//mysql state
app.use(function (req, res, next) {
  req.mysqlpool = pool;
  next();
});

//auth services
app.use('/auth/v1', routes);



// send back a 404 error for any unknown api request
app.use((req, res, next) => {
  next(new ApiError(httpStatus.NOT_FOUND, 'Not found'));
});

// convert error to ApiError, if needed
app.use(errorConverter);

// handle error
app.use(errorHandler);


module.exports = app;
