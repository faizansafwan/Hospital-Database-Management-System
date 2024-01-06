USE hospitalManagement;

INSERT INTO staff VALUES ('D00010', 'M.Nishanthan', 'E 106 main street kegalle', 0768545347, 40);
INSERT INTO staff VALUES ('D00011', 'M.Ahamed', 'F 89 Nuwara-eliya road Gampola', 0780102123, 42);
INSERT INTO staff VALUES ('N00012', 'M.feranado', 'E 10 Kandy road  kurunagala', 0778897811, 51);
INSERT INTO staff VALUES ('D00013', 'M.S. Amaali', 'H 37 Matale road katugastota', 0718086120, 39);
INSERT INTO staff VALUES ('N00014', 'R.M.kaviya', 'H 58 Main street Kadugannawa', 0787788677, 50);
INSERT INTO staff VALUES ('S00015', 'M.Ramanathan', 'H 24 Colombo road Warakapola', 0750011445, 35);
INSERT INTO staff VALUES ('S00016', 'M.lahiru', 'G 39 Main street Mawanella', 0755647566, 44);
INSERT INTO staff VALUES ('N00017', 'M.pathsara', 'E 66 Kandy road Matale', 0710131626, 47);
INSERT INTO staff VALUES ('D00018', 'M.Fathima', 'F 50 Main street Peradeniya', 0748500510, 45);
INSERT INTO staff VALUES ('N00019', 'M.Dilani', 'E 71 Colombo road kandy', 0776745340, 33);
INSERT INTO staff VALUES ('N00020', 'M.Ayesha', 'G 75 Kurunagala road Puttlam', 0768545670, 31);
INSERT INTO staff VALUES ('D00021', 'M.Lahiru', 'F 56 main street kandy', 0768545340, 29);

UPDATE staff SET emp_id = 'Emp00010' WHERE emp_id = 'D00010'; 
UPDATE staff SET emp_id = 'Emp00011' WHERE emp_id = 'D00011'; 
UPDATE staff SET emp_id = 'Emp00012' WHERE emp_id = 'N00012'; 
UPDATE staff SET emp_id = 'Emp00013' WHERE emp_id = 'D00013'; 
UPDATE staff SET emp_id = 'Emp00014' WHERE emp_id = 'N00014'; 
UPDATE staff SET emp_id = 'Emp00015' WHERE emp_id = 'S00015'; 
UPDATE staff SET emp_id = 'Emp00016' WHERE emp_id = 'S00016'; 
UPDATE staff SET emp_id = 'Emp00017' WHERE emp_id = 'N00017'; 
UPDATE staff SET emp_id = 'Emp00018' WHERE emp_id = 'D00018'; 
UPDATE staff SET emp_id = 'Emp00019' WHERE emp_id = 'N00019'; 
UPDATE staff SET emp_id = 'Emp00020' WHERE emp_id = 'N00020'; 
UPDATE staff SET emp_id = 'Emp00021' WHERE emp_id = 'D00021'; 

SELECT * FROM staff;

DESCRIBE staff;

INSERT INTO doctor VALUES ('D00111', 'Oncologist', 'Emp00010');
INSERT INTO doctor VALUES ('D00112', 'Neurologist', 'Emp00011');
INSERT INTO doctor VALUES ('D00113', 'Cardiologist', 'Emp00013');
INSERT INTO doctor VALUES ('D00114', 'Dermatologist', 'Emp00018');
INSERT INTO doctor VALUES ('D00115', 'Gynaecologist', 'Emp00021');

SELECT * FROM doctor;
DESCRIBE doctor;

INSERT INTO nurse VALUES ('N00321', 'Advanced pactice registered', 23, 'Sugical Instrumentation',  'Emp00012');
INSERT INTO nurse VALUES ('N00322', 'Doctoral Level', 21, 'Post-Operative Care', 'Emp00014');
INSERT INTO nurse VALUES ('N00323', 'Registered Nurse', 15, 'Anesthesia Assistance', 'Emp00017');
INSERT INTO nurse VALUES ('N00324', 'Registered Nurse', 5, 'Wound Care and Dressing changes', 'Emp00019');
INSERT INTO nurse VALUES ('N00325', 'Nurse Assistant', 3, 'Sugical Safety Protocols', 'Emp00020');

DESCRIBE Nurse;
SELECT * FROM nurse;

INSERT INTO headDoctor VALUES (001 , 'D00111');
INSERT INTO headDoctor VALUES (002, 'D00113');

SELECT * FROM headDoctor;
DESCRIBE headDoctor;

INSERT INTO surgeon VALUES ('S00510', 'General and Cardiothoracic Surgery',
												'Treat Heart, Lungs, Oesophagus and Chest surgery', 2,  'Emp00015');
INSERT INTO surgeon VALUES ('S00511', 'Neurologic surgery', 'Treat Brain and nerver system surgery', 3, 'Emp00016');

SELECT sur_id AS surgeon_id, speciality, type_of_con AS type_of_contract, 
													len_of_con AS 'length_of_contract(Year)', emp_id FROM surgeon;
DESCRIBE surgeon;

INSERT INTO patient VALUES ('P00001', 'M.Kumar', 'E 106 main street kegalle', 0758545347, 60, 'D00111' );
INSERT INTO patient VALUES ('P00002', 'P.Hansika', 'F 89 Nuwara-eliya road Kotmala', 0780102123, 52, 'D00115');
INSERT INTO patient VALUES ('P00003', 'M.Z.Shehan', 'H 37 Matale road katugastota', 0728086120, 38, 'D00114');
INSERT INTO patient VALUES ('P00004', 'K.M.kavindu', 'H 158 Main street Kadugannawa', 0727788677, 35, 'D00111');
INSERT INTO patient VALUES ('P00005', 'U.N. Alahakoon', 'H 74 Colombo road Warakapola', 0770011445, 10, 'D00114');
INSERT INTO patient VALUES ('P00006', 'S.H.Maria', 'D 39 Main street Mawanella', 0715647566, 42, 'D00112');
INSERT INTO patient VALUES ('P00007', 'M.J.Kavin', 'E 66 Matara road Galle', 0710336626, 47, 'D00113');
INSERT INTO patient VALUES ('P00008', 'L.N.Sumaiya', 'D 58 Main street Pilimathalawa', 0708588510, 45, 'D00112');
INSERT INTO patient VALUES ('P00009', 'S.L.M.Dulmini', 'E 71 Colombo road kandy', 0776745001, 33, 'D00113');
INSERT INTO patient VALUES ('P00020', 'M.Nimesha', 'G 75 Kurunagala road Puttlam', 0768545096, 37, 'D00111');
INSERT INTO patient VALUES ('P00021', 'H.M.Dhinesh', 'H 56 main street kandy', 0775453564, 26, 'D00112');
INSERT INTO patient VALUES ('P00022', 'M.Mohamed', 'H 89 Nuwara-eliya road Gampola', 0780102123, 57, 'D00111');
INSERT INTO patient VALUES ('P00023', 'M.S.Kolvin ', 'G 90 Kandy road Gelioya', 0708566120, 67, 'D00113');
INSERT INTO patient VALUES ('P00024', 'R.M.Shehan', 'E 51 Main street Mawanella', 0758988677, 23, 'D00115');
INSERT INTO patient VALUES ('P00025', 'M.Kamaal', 'F 20 Dambulla road Matale', 0760013245, 09, 'D00112');
INSERT INTO patient VALUES ('P00026', 'M.Kasun', 'G 98 Main street Colombo 14', 0755647566, 24, 'D00114');
SELECT * FROM patient;
DESCRIBE patient;

INSERT INTO patientType VALUES ('PT00101', 'None', 'B+','P00001' );
INSERT INTO patientType VALUES ('PT00102', 'None', 'B+', 'P00002');
INSERT INTO patientType VALUES ('PT00103', 'None', 'O+', 'P00003');
INSERT INTO patientType VALUES ('PT00104', 'None', 'AB+', 'P00004');
INSERT INTO patientType VALUES ('PT00105', 'Food Allergy', 'o+', 'P00005');
INSERT INTO patientType VALUES ('PT00106', 'None', 'AB+', 'P00006');
INSERT INTO patientType VALUES ('PT00107', 'Food Allergy', 'B+', 'P00007');
INSERT INTO patientType VALUES ('PT00108', 'Drug Allergy', 'A-', 'P00008');
INSERT INTO patientType VALUES ('PT00109', 'None', 'O+', 'P00009');
INSERT INTO patientType VALUES ('PT00120', 'None', 'A+', 'P00020');
INSERT INTO patientType VALUES ('PT00121', 'Asthma', 'O+', 'P00021');
INSERT INTO patientType VALUES ('PT00122', 'None', 'O-', 'P00022');
INSERT INTO patientType VALUES ('PT00123', 'Pet Allergy', 'A+', 'P00023');
INSERT INTO patientType VALUES ('PT00124', 'Food Allergy', 'B+', 'P00024');
INSERT INTO patientType VALUES ('PT00125', 'Drug Allergy', 'B+', 'P00025');
INSERT INTO patientType VALUES ('PT00126', 'Asthma', 'O+',  'P00026');

SELECT * FROM patientType;
DESCRIBE patientType;


INSERT INTO location VALUES (01, 01, 'Medical Surgical Unit','P00001');
INSERT INTO location VALUES (01, 02, 'Medical Surgical Unit', 'P00002');
INSERT INTO location VALUES (01, 03, 'Medical Surgical Init', 'P00003');
INSERT INTO location VALUES (01, 04, 'Medical Surgical Unit', 'P00004');
INSERT INTO location VALUES (02, 01, 'Medical Surgical Unit', 'P00005');
INSERT INTO location VALUES (02, 02, 'Medical Surgical Unit', 'P00006');
INSERT INTO location VALUES (02, 03, 'Medical Surgical Unit', 'P00007');
INSERT INTO location VALUES (02, 04, 'Medical Surgical Unit', 'P00008');
INSERT INTO location VALUES (03, 01, 'Emergency Room', 'P00009');
INSERT INTO location VALUES (03, 02, 'Emergency Room', 'P00020');
INSERT INTO location VALUES (03, 03, 'Emergency Room', 'P00021');
INSERT INTO location VALUES (03, 04, 'Emergency Room', 'P00022');
INSERT INTO location VALUES (04, 01, 'Intensive Care Unit', 'P00023');
INSERT INTO location VALUES (04, 02, 'Intensive Care Unit', 'P00024');
INSERT INTO location VALUES (04, 03, 'Intensive Care Unit', 'P00025');
INSERT INTO location VALUES (04, 04, 'Intensive Care Unit',  'P00026');

UPDATE location SET nursing_unit = 'Medical Surgical Unit' WHERE pat_id = 'P00003';

SELECT * FROM location;
DESCRIBE location;

INSERT INTO medication VALUES ('M0111', 'Sertraline', 500, 10000.00, 2025-06-08);
INSERT INTO medication VALUES ('M0112', 'Esomeprazole', 300, 7000.00, '2024-09-03');
INSERT INTO medication VALUES ('M0113', 'Amoxicillin', 1000, 8000.00, '2027-04-23');
INSERT INTO medication VALUES ('M0114', 'Levothyroxine', 440, 14000.00, '2025-06-28');
INSERT INTO medication VALUES ('M0115', 'Bupropion', 558, 13000.00, '2027-03-17');
INSERT INTO medication VALUES ('M0116', 'Metformin', 330, 4300, '2026-11-19');
INSERT INTO medication VALUES ('M0117', 'Omeprazole',  674, 2500, '2026-12-12');
INSERT INTO medication VALUES ('M0118', 'Acetaminophen',  180, 4000.00, '2025-09-05');
INSERT INTO medication VALUES ('M0119', 'Amlodipine',  196, 7000.00, '2026-07-01');
INSERT INTO medication VALUES ('M0120', 'Lisinopril',  278, 5350.00, '2025-03-22');
INSERT INTO medication VALUES ('M0121', 'Ventolin',  105, 4760.00, '2027-02-24');
INSERT INTO medication VALUES ('M0122', 'Xanax',  93, 9300.00, '2024-10-08');
INSERT INTO medication VALUES ('M0123', 'Prozac',  127, 7860.00, '2027-06-08');
INSERT INTO medication VALUES ('M0124', 'Bupropion',  164, 3296.00, '2027-02-19');
INSERT INTO medication VALUES ('M0125', 'Metformin',  100, 4300.00, '2026-07-06');
INSERT INTO medication VALUES ('M0126', 'Asprin',  476, 9968.00, '2025-03-26');
SELECT * FROM medication;

UPDATE medication set  exp_date = '2023-09-19', qty_on_hand = 230 WHERE med_id = 'M0125';
DELETE FROM medication WHERE med_id = 'M0125';


DESCRIBE medication;

INSERT INTO medicationOrder VALUES ('111', 'P00003', 'M0117', 10);
INSERT INTO medicationOrder VALUES ('112', 'P00003', 'M0116', 05);
INSERT INTO medicationOrder VALUES ('113', 'P00023', 'M0115', 08);
INSERT INTO medicationOrder VALUES ('114', 'P00026', 'M0121', 04);
INSERT INTO medicationOrder VALUES ('115', 'P00001', 'M0123', 07);
INSERT INTO medicationOrder VALUES ('116', 'P00001', 'M0122', 10);
INSERT INTO medicationOrder VALUES ('117', 'P00001', 'M0111', 12);
INSERT INTO medicationOrder VALUES ('118', 'P00021', 'M0121', 09);
INSERT INTO medicationOrder VALUES ('119', 'P00021', 'M0112', 09);
INSERT INTO medicationOrder VALUES ('120', 'P00021', 'M0111', 11);
SELECT * FROM medicationOrder;
DESCRIBE medicationOrder;




INSERT INTO surgery VALUES ('Joint replacement','P00009', '2023-08-08', '11:30:00', 'Orthopedic Surgery', 'None', 'S00510');
INSERT INTO surgery VALUES ('Heart valve repair','P00022', '2023-08-16', '17:00:00', 'Heart surgery', 'Mobility', 'S00510');
INSERT INTO surgery VALUES ('Laparoscopic appendectomy','P00003', '2023-08-28', '15:30:00', 
																				'Appendectomy', 'Cognitive impairment', 'S00511');
INSERT INTO surgery VALUES ('Cataract surgery','P00005', '2023-09-04', '11:30:00', 'Eye surgery', 'None', 'S00511');
INSERT INTO surgery VALUES ('Joint replacement','P00024', '2023-09-10', '17:45:00', 'Orthopedic Surgery', 'Sensory impairment', 'S00510');
INSERT INTO surgery VALUES ('Heart transplant','P00026', '2023-09-26', '15:00:00', 'Heart surgery', 'Behavioral Health issue', 'S00510');

SELECT * FROM surgery;
DESCRIBE surgery;
