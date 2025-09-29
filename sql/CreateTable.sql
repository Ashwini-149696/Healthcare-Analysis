CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    appointment_date DATE,
    dentist_name VARCHAR(50),
    treatment_id INT,
    department VARCHAR(50),
    visit_type VARCHAR(20),
    scheduled_time TIME,
    checkin_time TIME,
    no_show INT
);
