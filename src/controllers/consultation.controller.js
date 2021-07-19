const httpStatus = require('http-status');
const catchAsync = require('../utils/catchAsync');
const { consultationService } = require('../services');

const uploadRecord = catchAsync(async (req, res) => {

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

const getRecords = catchAsync(async (req, res) => {
    const { clinicId } = req.clinic;
    const { from, to, limit, offset } = req.query;
    const consultationRecords = await consultationService.getRecords(clinicId, from, to, limit, offset);
    res.send({ resp: { consultationRecords }, message: 'get consultation records succeed.' });
});
module.exports = {
    uploadRecord,
    getRecords,
};
