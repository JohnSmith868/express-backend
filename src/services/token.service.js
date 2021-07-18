const jwt = require('jsonwebtoken');
const moment = require('moment');
const httpStatus = require('http-status');
const config = require('../config/config');

const ApiError = require('../utils/ApiError');



/**
 * Generate token
 * @param {ObjectId} userId
 * @param {string} [secret]
 * @returns {string}
 */
const generateToken = async (req, clinicId, secret = config.jwt.secret) => {
    let expires = moment().add(config.jwt.expiration, 'days');
    const payload = {
        sub: clinicId,
        iat: moment().unix(),
        exp: expires.unix(),
    };
    let token = jwt.sign(payload, secret);
    console.log(expires)
    await saveToken(req, token, clinicId, expires.unix());
    return token;
};

/**
 * Save a token
 * @param {Object} req
 * @param {string} token
 * @param {number} clinicId
 * @param {number} expires
 * @returns {Promise<Token>}
 */
const saveToken = async (req, token, clinicId, expires) => {

    await new Promise((resolve, reject) => {
        req.mysqlpool.getConnection(function (err, connection) {

            if (err) throw new ApiError(httpStatus.BAD_REQUEST, `Login fail. ${err}`);
            connection.query('INSERT INTO tokens (token, expired, clinicId) VALUES (?, ?, ?)', [token, expires, clinicId], (err, result) => {
                if (err) throw new ApiError(httpStatus.BAD_REQUEST, `Login fail. ${err}`);
                if (result.affectedRows == 1)
                    resolve();
                reject(new ApiError(httpStatus.BAD_REQUEST, `Login fail. ${err}`));
            });
        });
    });


};


module.exports = {
    generateToken,
};
