const httpStatus = require('http-status');
const catchAsync = require('../utils/catchAsync');
const { authService, tokenService } = require('../services');

const register = catchAsync(async (req, res) => {
    const clinicId = await authService.createClinic(req);
    res.status(httpStatus.CREATED).send({ resp: { clinicId }, message: 'create clinic succeed.' });
});

const login = catchAsync(async (req, res) => {
    const { email, password } = req.body;
    const clinicId = await authService.login(req);
    const token = await tokenService.generateToken(req, clinicId);
    res.send({ resp: { clinicId, token }, message: 'login succeed.' });
});
module.exports = {
    register,
    login,
};
