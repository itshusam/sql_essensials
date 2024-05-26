CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) VALUES
(1, 'John Smith', 30),
(2, 'Jane Doe', 25),
(3, 'Alice Johnson', 35),
(4, 'Bob Brown', 28);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-05-01', '08:00 AM', 'Cardio'),
(2, 2, '2024-05-02', '09:00 AM', 'Yoga'),
(3, 3, '2024-05-03', '10:00 AM', 'Weightlifting'),
(4, 4, '2024-05-04', '07:00 AM', 'Swimming');


UPDATE WorkoutSessions
SET session_time = '06:00 PM'
WHERE member_id = 2 AND session_date = '2024-05-02';

DELETE FROM WorkoutSessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;