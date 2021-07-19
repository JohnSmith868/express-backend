const httpStatus = require('http-status');
const catchAsync = require('../utils/catchAsync');
const { consultationService } = require('../services');

const uploadRecord = catchAsync(async (req, res) => {
    console.log('controller')
    const { clinicId } = req.clinic;
    const { clinic,
        doctor_name,
        patient_name,
        diagnosis,
        medication,
        consultation_fee,
        date,
        follow_up, } = req.body;

    const consultationId = await consultationService.uploadRecord(clinicId, clinic, doctor_name, patient_name, diagnosis, medication, consultation_fee, date, follow_up);
    res.status(httpStatus.CREATED).send({ resp: { consultationId }, message: 'create consultation record succeed.' });
});

const queryRecords = catchAsync(async (req, res) => {

});
module.exports = {
    uploadRecord,
    queryRecords,
};
