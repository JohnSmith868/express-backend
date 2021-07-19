const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');

const should = chai.should();

chai.use(chaiHttp);

describe('/POST /auth/v1/register', () => {
    it('it sould create the clinic info', (done) => {
        const clinic = {
            email: `asma${Math.random()}@gmail${Math.random()}.com`,
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
            res.body.should.have.property('resp').and.have.property('clinicId');
            res.body.should.have.property('message');
            res.body.should.have.property('message').eq('create clinic succeed.');
            done();
        });
    });
});

let token;
describe('/POST /auth/v1/login', () => {
    it('it should login the system, and return token', (done) => {
        const clinic = {
            email: `asma@gmail.com`,
            password: 'test1234',
        };

        chai.request(app)
        .post('/auth/v1/login')
        .send(clinic)
        .end((err, res) => {
            res.should.have.status(200);
            res.body.should.be.a('object');
            res.body.should.have.property('resp').and.have.property('token');
            res.body.should.have.property('resp').and.have.property('clinicId');
            res.body.should.have.property('message');
            res.body.should.have.property('message').eq('login succeed.');
            console.log(res.body.resp.token)
            token = res.body.resp.token;
            done();
        });
    });
});


describe('/POST /consultation/v1/consultations/uploadRecord', () => {
    it('it should upload a consultation record.', (done) => {
        const consultation = {
            clinic: 'Health Clinic',
            doctor_name: 'Dr. Chan Tai Man',
            patient_name: 'Jim Chau',
            diagnosis: 'headaches',
            medication: 'neurontin',
            consultation_fee: 210,
            date: '2021-01-01 15:20:23',
            follow_up: true
        };

        chai.request(app)
        .post('/consultation/v1/consultations/uploadRecord')
        .set({ "Authorization": `Bearer ${token}` })
        .send(consultation)
        .end((err, res) => {
            if(err) console.log(err)
            res.should.have.status(201);
            res.body.should.be.a('object');
            res.body.should.have.property('resp').and.have.property('consultationId');
            res.body.should.have.property('message');
            res.body.should.have.property('message').eq('create consultation record succeed.');
            done();
        });
    });
});