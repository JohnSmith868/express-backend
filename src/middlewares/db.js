//mysql connection
const mysql = require('mysql');
const config = require('../config/config');

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


module.exports = pool;