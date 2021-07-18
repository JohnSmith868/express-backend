const httpStatus = require('http-status');
const ApiError = require('../utils/ApiError');

/**
 * Create a Clinic
 * @param {Object} req
 * @returns {Promise<Number>}
 */
const createClinic = async (req) => {
  const { email, phone, address, password } = req.body;

  // check if email taken
  await new Promise((res, rej) => {
    req.mysqlpool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(`SELECT * FROM clinics where email = ?`, [email], function (error, results, fields) {
        if (error) throw error;
        console.log(results);
        if (results.length > 0) {
          rej(new ApiError(httpStatus.BAD_REQUEST, 'Email already taken'));
        }
        connection.release();
        if (error) throw error;

        res();
      });
    });
  });

  // insert into database
  let clinicId;
  await new Promise((res, rej) => {
    req.mysqlpool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(`INSERT INTO clinics (email,phone,address, password) VALUES (?,?,?,md5(?))`, [email, phone, address, password], function (error, result) {
        if (error) throw error;

        if (result.affectedRows == 1) {
          connection.release();
          if (error) throw error;
          clinicId = result.insertId;
          res();
        }
        rej(new ApiError(httpStatus.BAD_REQUEST, 'Create Clinic Record Fail.'));
      });
    });
  });

  return clinicId;
};


/**
 * Login with username and password
 * @param {Object} req
 * @returns {Promise<clinicId>}
 */
const login = async (req) => {
  const { email, password } = req.body;

  let clinicId;
  await new Promise((resolve, reject) => {
    req.mysqlpool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(`SELECT * FROM clinics WHERE email = ? AND password = md5(?);`, [email, password], function (error, results) {
        if (error) throw error;

        if (results.length > 0) {
          connection.release();
          if (error) throw error;
          clinicId = results[0].clinicId;
          resolve();
        }
        reject(new ApiError(httpStatus.BAD_REQUEST, 'Incorrect email or password'));
      });
    });
  });


  return clinicId;
};

module.exports = {
  createClinic,
  login
};
