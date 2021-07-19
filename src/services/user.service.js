const httpStatus = require('http-status');
const ApiError = require('../utils/ApiError');
const pool = require('../middlewares/db');

/**
 * Get clinic by id
 * @param {ObjectId} id
 * @returns {Promise<Clinic>}
 */
const getUserById = async ( clinicId) => {

    let clinic;
    await new Promise((resolve, reject) => {
        pool.getConnection(function (err, connection) {
            if (err) throw err;
            connection.query(`SELECT * FROM clinics WHERE clinicId = ?;`, [clinicId], function (error, results) {
                if (error) throw error;

                if (results.length > 0) {
                    connection.release();
                    if (error) throw error;
                    clinic = {};
                    clinic.clinicId = results[0].clinicId;
                    clinic.email = results[0].email;
                    clinic.address = results[0].address;
                    clinic.role = 'normal';
                    resolve();
                }
                reject(new ApiError(httpStatus.BAD_REQUEST, 'Find user Fail.'));
            });
        });
    });
    return clinic;
};

/**
 * Get user by email
 * @param {string} email
 * @returns {Promise<User>}
 */
const getUserByEmail = async (email) => {
    return User.findOne({ email });
};

/**
 * Update user by id
 * @param {ObjectId} userId
 * @param {Object} updateBody
 * @returns {Promise<User>}
 */
const updateUserById = async (userId, updateBody) => {
    const user = await getUserById(userId);
    if (!user) {
        throw new ApiError(httpStatus.NOT_FOUND, 'User not found');
    }
    if (updateBody.email && (await User.isEmailTaken(updateBody.email, userId))) {
        throw new ApiError(httpStatus.BAD_REQUEST, 'Email already taken');
    }
    Object.assign(user, updateBody);
    await user.save();
    return user;
};

/**
 * Delete user by id
 * @param {ObjectId} userId
 * @returns {Promise<User>}
 */
const deleteUserById = async (userId) => {
    const user = await getUserById(userId);
    if (!user) {
        throw new ApiError(httpStatus.NOT_FOUND, 'User not found');
    }
    await user.remove();
    return user;
};


/**
 * Filter user by date
 * @param {string} dateFrom
 * @param {string} dateTo
 * @returns {Promise<User>}
 */
const getUsersByDate = async (dateFrom, dateTo) => {

    console.log('getUsersByDate : ', dateFrom, dateTo);

    // formatted data type by moment.js
    dateFrom = moment(dateFrom, 'YYYY-MM-DD');
    dateTo = moment(dateTo, 'YYYY-MM-DD');

    // if data is invalid value
    if (!dateFrom.isValid() || !dateTo.isValid()) {
        console.log('error : Invalid value');
        throw new ApiError(httpStatus.INTERNAL_SERVER_ERROR, 'The date format should included yyyy, mm and dd. e.g. 20210201 or 2021-02-01');
    }

    // find certain period registered users
    const users = await User.find({ createdAt: { $gte: dateFrom, $lte: dateTo } }).select('email');

    return users;
};


module.exports = {
    getUserById,
};
