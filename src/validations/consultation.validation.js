const Joi = require('joi');


const uploadRecord = {
    body: Joi.object().keys({
        clinic: Joi.string().required(),
        doctor_name: Joi.string().required(),
        patient_name: Joi.string().required(),
        diagnosis: Joi.string().required(),
        medication: Joi.string().required(),
        consultation_fee: Joi.number().required(),
        date: Joi.date().required(),
        follow_up: Joi.boolean().required(),
    }),
};

module.exports = {
    uploadRecord,
};