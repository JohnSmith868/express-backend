const httpStatus = require('http-status');
const ApiError = require('../utils/ApiError');
const pool = require('../middlewares/db');

/**
 * Create a consultation record
 * @param {Number} clinicId
 * @param {String} clinic
 * @param {String} doctorName
 * @param {String} patientName
 * @param {String} diagnosis
 * @param {String} medication
 * @param {Number} consultationFee
 * @param {DateTime} date
 * @param {boolean} followUp
 * @returns {Promise<consultationId>} 
 */
const uploadRecord = async (clinicId, clinic, doctorName, patientName, diagnosis, medication, consultationFee, date, followUp) => {

  let consultationId;
  await new Promise((resolve, reject) => {

    pool.getConnection((err, connection) => {
      if (err) {
        console.log(err);
        reject();
      }
      connection.query('INSERT INTO consultationrecords (clinicId, clinic, doctorName, patientName, diagnosis, medication, consultationFee, date, followUp) VALUES (?,?,?,?,?,?,?,?,?)',
        [clinicId, clinic, doctorName, patientName, diagnosis, medication, consultationFee, date, followUp],
        function (err, results) {
          if (err) {
            console.log(err);
            reject();
          }
          connection.release();
          if (err) {
            console.log(err);
            reject();
          }
          consultationId = results.insertId;
          resolve();

        }
      );
    })


  });


  return consultationId;
};



/**
 * Get a consultation records
 * @param {Number} clinicId
 * @param {Date} from
 * @param {Date} to
 * @param {Number} limit
 * @param {Number} offset
 * @returns {Promise<consultationRecords>} 
 */
const getRecords = async (clinicId, from, to, limit, offset) => {
  let consultationRecords = [];
  await new Promise((resolve, reject) => {

    pool.getConnection((err, connection) => {
      if (err) throw new ApiError(httpStatus.BAD_REQUEST, 'sql error.');
      connection.query('SELECT * from consultationrecords WHERE  date > ? AND date < ? AND clinicId = ? LIMIT ? OFFSET ?',
        [from, to, clinicId, limit, offset],
        function (err, results) {
          if (err) reject(new ApiError(httpStatus.BAD_REQUEST, `sql error. ${err}`));
          connection.release();
          if (err) throw new ApiError(httpStatus.BAD_REQUEST, 'sql error.');
          if (results.length > 0)
            consultationRecords = results;
          resolve();

        }
      );
    })


  });


  return consultationRecords;
};

module.exports = {
  uploadRecord,
  getRecords
};
