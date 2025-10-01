 -- Create Database
CREATE DATABASE TodoDB;
USE TodoDB;

-- Tables
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(100),
    due_date DATE,
    status VARCHAR(20) CHECK (status IN ('Pending', 'In Progress', 'Completed'))
);

-- Sample Data
INSERT INTO Tasks (task_name, due_date, status) VALUES
('Finish SQL Project', '2025-10-05', 'Pending'),
('Prepare for Exam', '2025-10-10', 'In Progress'),
('Buy Groceries', '2025-10-02', 'Completed');

-- Example Queries
-- 1. Show all pending tasks
SELECT * FROM Tasks WHERE status = 'Pending';

-- 2. Update a task status
UPDATE Tasks SET status = 'Completed' WHERE task_id = 1;

-- 3. Show tasks due this week
SELECT * FROM Tasks
WHERE due_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
