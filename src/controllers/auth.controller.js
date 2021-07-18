const httpStatus = require('http-status');
const catchAsync = require('../utils/catchAsync');
const { authService, } = require('../services');

const register = catchAsync(async (req, res) => {
    console.log('controller')
    const userId = await authService.createClinic(req);
    res.status(httpStatus.CREATED).send({ resp: { userId }, message:'create clinic succeed.' });
});

module.exports = {
    register,
};
