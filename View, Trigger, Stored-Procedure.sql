USE hospitalManagement;

--  Q1 - 421421108 
CREATE VIEW surgery_on_patient AS 
SELECT patient.pat_id, patient.pat_name, location.room_no, location.bed_no, surgery.sur_name, surgery.sur_date
FROM patient, location, surgery WHERE patient.pat_id = surgery.pat_id AND patient.pat_id = location.pat_id;

SELECT * FROM surgery_on_patient;

-- Q2 i - 421421108 
CREATE TABLE MedInfo(
	MedName VARCHAR(255) ,
    QuantityAvailable INT ,
    ExpirationDate DATE );

CREATE TRIGGER insert_after_medication_table
AFTER INSERT ON medication
FOR EACH ROW 
INSERT INTO MedInfo(MedName, QuantityAvailable, ExpirationDate) VALUES(NEW.med_name, NEW.qty_on_hand, NEW.exp_date);

SELECT * FROM MedInfo;

--  Q2 ii - 421421108 

CREATE TRIGGER after_medicine_table_updated 
AFTER UPDATE ON medication
FOR EACH ROW
UPDATE MedInfo
SET MedName = NEW.med_name ,  QuantityAvailable = NEW.qty_on_hand ,  ExpirationDate = NEW.exp_date
WHERE MedInfo.MedName = OLD.med_name;

UPDATE medication set  exp_date = '2023-09-19', qty_on_hand = 230 WHERE med_id = 'M0125';


--  Q2 iii - 421421108 

CREATE TRIGGER after_medicine_data_deleted 
AFTER DELETE ON medication
FOR EACH ROW
DELETE FROM MedInfo WHERE MedInfo.MedName = OLD.med_name; 

DELETE FROM medication WHERE med_id = 'M0125';

SELECT * FROM MedInfo;


--  Q3 - 421421108 

DELIMITER $$
CREATE PROCEDURE numberOfMedication(IN p_id VARCHAR(10), INOUT number_of_medicine VARCHAR(10))
BEGIN
	SELECT COUNT(*) INTO number_of_medicine FROM medicationOrder 
    WHERE pat_id = p_id;
END $$
DELIMITER ;

SET @number_of_medicine = 0;
CALL numberOfMedication('P00001', @number_of_medicine);
SELECT @number_of_medicine;
SELECT * FROM medicationOrder;

-- Q4 - 421421108 
DELIMITER $$
CREATE FUNCTION calculateRemainDays(expDate DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE remain_days DATE;
    SET remain_days = datediff(expDate, CURDATE());
    RETURN remain_days;
END; $$
DELIMITER ;

SELECT *, calculateRemainDays(exp_date) AS Remaining_days
FROM medication WHERE calculateRemainDays(exp_date) <= 30;

SELECT * FROM medicationOrder;
SELECT * FROM medication;


-- Q6 - 421421108 

LOAD XML
INFILE "D:/BSE Programe/Semister 4/EEI4366/Mini Project/Staff.xml"
INTO TABLE hospitalManagement.staff ROWS IDENTIFIED BY '<STAFF>';

SELECT * FROM staff;

LOAD XML
INFILE "D:/BSE Programe/Semister 4/EEI4366/Mini Project/Patient.xml"
INTO TABLE hospitalManagement.patient ROWS IDENTIFIED BY '<PATIENT>';

SELECT * FROM patient;


