const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');

const should = chai.should();

chai.use(chaiHttp);

describe('/POST /auth/v1/register', () => {
    it('it sould create the clinic info', (done) => {
        const clinic = {
            email: 'asma@gmail.com',
            password: 'test1234',
            phone: '34235343',
            address: 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre'
        };

        chai.request(app)
        .post('/auth/v1/register')
        .send(clinic)
        .end((err, res) => {
            res.should.have.status(201);
            res.body.should.be.a('object');
            res.body.should.have.property('resp');
            res.body.should.have.property('message');
            res.body.should.have.property('message').eq('create clinic succeed.');
            done();
        });
    });
});