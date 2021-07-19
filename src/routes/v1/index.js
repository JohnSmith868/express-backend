const express = require('express');
const authRoute = require('./auth.route');
const consultationRoute = require('./consultation.route');

const router = express.Router();

// auth
router.use('/', authRoute);

// consultation
router.use('/consultations', consultationRoute);

module.exports = router;
