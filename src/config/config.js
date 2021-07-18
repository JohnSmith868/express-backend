const dotenv = require('dotenv');
const path = require('path');
const Joi = require('joi');

dotenv.config({ path: path.join(__dirname, '../../.env') });

const envVarsSchema = Joi.object()
    .keys({
        PORT: Joi.number().default(3000),
        MYSQL_DBNAME: Joi.string().required().description('MySQL database name.'),
        MYSQL_USER_NAME: Joi.string().required().description('MySQL username.'),
        MYSQL_PASSWORD: Joi.string().required().description('MySQL password.'),
        MYSQL_HOST: Joi.string().required().description('MySQL host.'),
    })
    .unknown();

const { value: envVars, error } = envVarsSchema.prefs({ errors: { label: 'key' } }).validate(process.env);

if (error) {
    throw new Error(`Config validation error: ${error}`);
}

module.exports = {
    env: envVars.NODE_ENV,
    mysql:{
        url: envVars.MYSQL_HOST,
        username: envVars.MYSQL_USER_NAME,
        password: envVars.MYSQL_PASSWORD,
        database: envVars.MYSQL_DBNAME,
    }
};
