const express = require('express');
const auth = require('../../middlewares/auth');
const validate = require('../../middlewares/validate');
const { consultationValidation } = require('../../validations');
const { consultationController } = require('../../controllers');

const router = express.Router();

// jwt
router.route('/uploadRecord').post(auth('getMe'), validate(consultationValidation.uploadRecord), consultationController.uploadRecord);
router.route('/getRecords').get(auth('getMe'), validate(consultationValidation.getRecords), consultationController.getRecords);



module.exports = router;
