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
      if (err) throw new ApiError(httpStatus.BAD_REQUEST, 'sql error.');
      connection.query('INSERT INTO consultationRecords (clinicId, clinic, doctorName, patientName, diagnosis, medication, consultationFee, date, followUp) VALUES (?,?,?,?,?,?,?,?,?)',
        [clinicId, clinic, doctorName, patientName, diagnosis, medication, consultationFee, date, followUp],
        function (err, results) {
          if (err) reject(new ApiError(httpStatus.BAD_REQUEST, `sql error. ${err}`));
          connection.release();
          if (err) throw new ApiError(httpStatus.BAD_REQUEST, 'sql error.');
          consultationId = results.insertId;
          resolve();

        }
      );
    })


  });


  return consultationId;
};


module.exports = {
  uploadRecord
};
