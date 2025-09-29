-- Total appointments
SELECT COUNT(*) FROM appointments;

-- No-show rate by department
SELECT department,
       ROUND(100.0 * SUM(no_show) / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY department
ORDER BY no_show_rate DESC;

-- Average patient wait time by department
SELECT department,
       ROUND(AVG(EXTRACT(EPOCH FROM (checkin_time - scheduled_time)) / 60), 2) AS avg_wait_minutes
FROM appointments
WHERE no_show = 0
GROUP BY department;

-- Monthly appointment trends
SELECT TO_CHAR(appointment_date, 'YYYY-MM') AS month,
       COUNT(*) AS total_appointments,
       SUM(no_show) AS total_no_shows
FROM appointments
GROUP BY month
ORDER BY month;

-- Doctor-wise appointment load and no-show rate
SELECT dentist_name,
       COUNT(*) AS total_appointments,
       SUM(no_show) AS total_no_shows,
       ROUND(100.0 * SUM(no_show)/COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY dentist_name
ORDER BY total_appointments DESC;

-- Visit type distribution
SELECT visit_type,
       COUNT(*) AS total
FROM appointments
GROUP BY visit_type
ORDER BY total DESC;
