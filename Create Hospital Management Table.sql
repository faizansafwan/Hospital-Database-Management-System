DROP DATABASE IF EXISTS hospitalManagement;

CREATE DATABASE hospitalManagement;
USE hospitalManagement;

CREATE TABLE staff(
	emp_id VARCHAR(10) NOT NULL,
    emp_name VARCHAR(50) NOT NULL,
    emp_address VARCHAR(255) NOT NULL,
    emp_tel INT NOT NULL,
    emp_age INT NOT NULL,
    PRIMARY KEY(emp_id));
    
DESCRIBE staff;

CREATE TABLE doctor(
	doc_id VARCHAR(10),
    specialize VARCHAR(250) NOT NULL,
    emp_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(doc_id),
    FOREIGN KEY(emp_id) REFERENCES staff(emp_id)
    );
    

DESCRIBE doctor;

CREATE TABLE headDoctor(
	headDoctor_no INT,
    doc_id VARCHAR(10),
    PRIMARY KEY (headDoctor_no, doc_id),
    FOREIGN KEY (doc_id) REFERENCES doctor(doc_id)
    );
    
DESCRIBE headDoctor;

CREATE TABLE nurse(
	nurse_id VARCHAR(10),
    grade VARCHAR(100) NOT NULL,
    year_of_exp INT NOT NULL,
    sur_skill_type VARCHAR(100) NOT NULL,
    emp_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(nurse_id),
    FOREIGN KEY(emp_id) REFERENCES staff(emp_id)
);

DESCRIBE nurse;


CREATE TABLE surgeon(
	sur_id VARCHAR(10),
    speciality VARCHAR(100) NOT NULL,
    type_of_con VARCHAR(100) NOT NULL,
    len_of_con INT NOT NULL,
    emp_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(sur_id),
    FOREIGN KEY(emp_id) REFERENCES staff(emp_id)
);

DESCRIBE surgeon;

CREATE TABLE patient(
	pat_id VARCHAR(10),
    pat_name VARCHAR(100) NOT NULL,
    pat_address VARCHAR(25) NOT NULL,
	pat_tel_no INT NOT NULL,
    age INT NOT NULL,
    doc_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(pat_id),
    FOREIGN KEY(doc_id) REFERENCES doctor(doc_id)
);
DESCRIBE patient;

CREATE TABLE patientType(
	patType_id VARCHAR(10),
    pat_allergy VARCHAR(255) NOT NULL,
    blood_type VARCHAR(25) NOT NULL,
    pat_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(patType_id),
    FOREIGN KEY(pat_id) REFERENCES patient(pat_id)
);
DESCRIBE patientType;

CREATE TABLE location(
	room_no INT,
    bed_no INT,
    nursing_unit VARCHAR(255) NOT NULL,
    pat_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(room_no, bed_no),
    FOREIGN KEY(pat_id) REFERENCES patient(pat_id)
);
DESCRIBE location;

CREATE TABLE medication(
	med_id VARCHAR(10),
    med_name VARCHAR(255) NOT NULL,
    qty_on_hand INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    exp_date DATE NOT NULL,
    PRIMARY KEY(med_id)
);

DESCRIBE medication;

CREATE TABLE medicationOrder(
	order_id VARCHAR(10),
    pat_id VARCHAR(10),
    med_id VARCHAR(10) NOT NULL,
    qty_ordered INT NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(pat_id) REFERENCES patient(pat_id),
    FOREIGN KEY(med_id) REFERENCES medication(med_id)
);

DESCRIBE medicationOrder;

CREATE TABLE surgery(
	sur_name VARCHAR(50),
    pat_id VARCHAR(10) NOT NULL,
    sur_date VARCHAR(255) NOT NULL,
    sur_time TIME NOT NULL,
    sur_category VARCHAR(255) NOT NULL,
    special_need VARCHAR(255) NOT NULL,
    surgeon_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(sur_name, pat_id),
    FOREIGN KEY(surgeon_id) REFERENCES surgeon(sur_id),
    FOREIGN KEY(pat_id) REFERENCES patient(pat_id)
);

DESCRIBE surgery;

