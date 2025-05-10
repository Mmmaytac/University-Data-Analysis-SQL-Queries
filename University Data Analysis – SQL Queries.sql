-----------------------------CREATING TABLES------------------------
create table students(
  name varchar(50),
  surname varchar(100),
  student_id int primary KEY,
  birthday date,
  phone varchar(50),
  faculty_id int,
  start_date date,
  end_date date,
  status varchar(50),
  profession_id int,
  experience boolean,
  score int,
  FOREIGN key (faculty_id) REFERENCES faculties(id),
  FOREIGN key (student_id) REFERENCES scores(student_id),
  FOREIGN key (student_id) REFERENCES experiences(student_id));
 
create table faculties(
  id int primary key,
  faculty_name varchar(100),
  FOREIGN key (id) REFERENCES professions(faculty_id));
  
create table professions(
    faculty_id int,
    id int primary key,
    profession_name varchar(100),
    FOREIGN key (id) REFERENCES subject(profession_id));
 
create table subjects(
  profession_id int,
  id int,
  subject_name varchar(100),
  FOREIGN key (id) REFERENCES scores(subject_id));

create table scores(
  student_id int,
  subject_id varchar(100),
  score int);  

create table experiences(
  id int,
  student_id int,
  company varchar(100),
  start_date date,
  end_date date,
  salary int);

-----------------------------INSERTING DATA-------------------------------
INSERT INTO students (name, surname, student_id, birthday, phone, faculty_id, start_date, end_date, status, profession_id, experience, score)
VALUES 
('Aysel', 'Məmmədova', 1, '2000-05-12', '0501234567', 1, '2018-09-01', '2022-06-30', 'Mezun', 101, TRUE,416),
('Elvin', 'Hüseynov', 2, '1999-08-22', '0507654321', 2, '2017-09-01', '2021-06-30', 'Mezun', 102, TRUE,384),
('Nərgiz', 'Əliyeva', 3, '2001-02-15', '0512345678', 3, '2019-09-01', '2023-06-30', 'Oxuyur', 103, FALSE,457),
('Tural', 'Məmmədov', 4, '2002-03-10', '0518765432', 4, '2020-09-01', '2024-06-30', 'Oxuyur', 104, FALSE,573),
('Ayxan', 'Quliyev', 5, '1998-11-05', '0551122334', 2, '2016-09-01', '2020-06-30', 'Mezun', 105, TRUE,625),
('Günel', 'Səfərova', 6, '2001-07-18', '0709988776', 3, '2019-09-01', '2023-06-30', 'Oxuyur', 106, FALSE,375),
('Kamran', 'İsmayılov', 7, '2000-01-30', '0772233445', 1, '2018-09-01', '2022-06-30', 'Mezun', 107, TRUE,536),
('Şəbnəm', 'Vəliyeva', 8, '1999-12-12', '0517788990', 2, '2017-09-01', '2021-06-30', 'Mezun', 108, TRUE,612),
('Murad', 'Əlizadə', 9, '2002-04-25', '0701122334', 3, '2020-09-01', '2024-06-30', 'Oxuyur', 109, FALSE,654),
('Nicat', 'Rzayev', 10, '2001-09-10', '0559988776', 1, '2019-09-01', '2023-06-30', 'Oxuyur', 110, FALSE,365),
('Sevinc', 'Baxışova', 11, '2000-02-28', '0514433221', 2, '2018-09-01', '2022-06-30', 'Mezun', 111, TRUE,459),
('Orxan', 'Qasımov', 12, '1999-06-14', '0506677889', 4, '2017-09-01', '2021-06-30', 'Mezun', 112, TRUE,680),
('Ləman', 'Əsədova', 13, '2001-11-22', '0705566778', 1, '2019-09-01', '2023-06-30', 'Oxuyur', 113, FALSE,570),
('Fərid', 'Süleymanov', 14, '2002-05-09', '0557788996', 2, '2020-09-01', '2024-06-30', 'Oxuyur', 114, FALSE,490),
('Rəna', 'Xəlilova', 15, '2000-08-03', '0513344556', 3, '2018-09-01', '2022-06-30', 'Mezun', 115, TRUE,495),
('Rəşad', 'Nağıyev', 16, '1998-10-21', '0702233445', 1, '2016-09-01', '2020-06-30', 'Mezun', 116, TRUE,465),
('Aygün', 'Cəfərova', 17, '2002-01-17', '0507788991', 2, '2020-09-01', '2024-06-30', 'Oxuyur', 114, FALSE,524),
('Emin', 'Qurbanov', 18, '1999-03-06', '0778899001', 3, '2017-09-01', '2021-06-30', 'Mezun', 118, TRUE,683),
('Fatimə', 'Kazımova', 19, '2001-07-29', '0516677885', 1, '2019-09-01', '2023-06-30', 'Oxuyur', 107, FALSE,375),
('Vüsal', 'Əhmədov', 20, '2000-11-15', '0553344557', 4, '2018-09-01', '2022-06-30', 'Mezun', 120, TRUE,637),
('Xəyalə', 'Məmmədli', 21, '2001-12-19', '0704455667', 3, '2019-09-01', '2023-06-30', 'Oxuyur', 103, FALSE,394),
('Səbuhi', 'İbrahimov', 22, '2002-06-05', '0517788997', 1, '2020-09-01', '2024-06-30', 'Oxuyur', 113, FALSE,479),
('Arzu', 'Bağırova', 23, '2000-04-11', '0502233446', 2, '2018-09-01', '2022-06-30', 'Mezun', 102, TRUE,449),
('Cavid', 'Orucov', 24, '1999-05-23', '0775566778', 3, '2017-09-01', '2021-06-30', 'Mezun', 109, TRUE,467),
('Ülviyyə', 'Məlikova', 25, '2001-03-30', '0708899001', 1, '2019-09-01', '2023-06-30', 'Oxuyur', 116, FALSE,584),
('Pərviz', 'Vəliyev', 26, '2002-09-27', '0512233445', 2, '2020-09-01', '2024-06-30', 'Oxuyur', 108, FALSE,565),
('Sona', 'Həsənova', 27, '2000-07-04', '0556677885', 3, '2018-09-01', '2022-06-30', 'Mezun', 115, TRUE,657),
('Fuad', 'Ələkbərov', 28, '1998-02-17', '0507788992', 4, '2016-09-01', '2020-06-30', 'Mezun', 128, TRUE,364),
('Şahin', 'Rüstəmov', 29, '2001-08-09', '0702233447', 2, '2019-09-01', '2023-06-30', 'Oxuyur', 111, FALSE,390),
('Zəhra', 'İsmayılova', 30, '2002-10-12', '0513344558', 3, '2020-09-01', '2024-06-30', 'Oxuyur', 118, FALSE,479),
('Səid', 'Mikayılov', 31, '2000-06-20', '0777788990', 1, '2018-09-01', '2022-06-30', 'Mezun', 101, TRUE,405),
('Aminə', 'Qasımova', 32, '1999-09-01', '0701122336', 2, '2017-09-01', '2021-06-30', 'Mezun', 102, TRUE,478),
('Əli', 'Əfəndiyev', 33, '2001-02-08', '0507788993', 3, '2019-09-01', '2023-06-30', 'Oxuyur', 103, FALSE,570),
('Leyla', 'Səmədova', 34, '2002-07-13', '0515566779', 1, '2020-09-01', '2024-06-30', 'Oxuyur', 107, FALSE,450),
('Zaur', 'Abdullayev', 35, '2000-12-03', '0773344559', 2, '2018-09-01', '2022-06-30', 'Mezun', 114, TRUE,580),
('Nigar', 'Cəfərli', 36, '1999-11-19', '0706677880', 3, '2017-09-01', '2021-06-30', 'Mezun', 103, TRUE,364),
('Eldar', 'Sultanov', 37, '2001-06-27', '0551122335', 1, '2019-09-01', '2023-06-30', 'Oxuyur', 113, FALSE,574),
('Zümrüd', 'Xudaverdiyeva', 38, '2002-01-21', '0517788998', 2, '2020-09-01', '2024-06-30', 'Oxuyur', 105, FALSE,574),
('Natiq', 'Bayramov', 39, '2000-03-15', '0704455668', 3, '2018-09-01', '2022-06-30', 'Mezun', 106, TRUE,450),
('Röya', 'Əlizadə', 40, '1998-04-04', '0509988777', 1, '2016-09-01', '2020-06-30', 'Mezun', 101, TRUE,475),
('Samir', 'Məmmədov', 41, '2001-05-29', '0512233447', 4, '2019-09-01', '2023-06-30', 'Oxuyur', 141, FALSE,485),
('Əsmər', 'Hacıyeva', 42, '2002-11-11', '0705566779', 3, '2020-09-01', '2024-06-30', 'Oxuyur', 109, FALSE,375),
('Rahib', 'Sadıqov', 43, '2000-10-06', '0778899002', 1, '2018-09-01', '2022-06-30', 'Mezun', 107, TRUE,376),
('İlkin', 'Musayev', 44, '1999-01-13', '0506677881', 2, '2017-09-01', '2021-06-30', 'Mezun', 102, TRUE,645),
('Zeynəb', 'Vəliyeva', 45, '2001-07-24', '0513344559', 4, '2019-09-01', '2023-06-30', 'Oxuyur', 141, FALSE,348),
('İsmayıl', 'Orucov', 46, '2002-05-18', '0707788993', 1, '2020-09-01', '2024-06-30', 'Oxuyur', 116, FALSE,576),
('Rəfail', 'Ələkbərov', 47, '2000-09-12', '0551122336', 2, '2018-09-01', '2022-06-30', 'Mezun', 108, TRUE,574),
('Şahnaz', 'Quliyeva', 48, '1998-07-03', '0775566779', 3, '2016-09-01', '2020-06-30', 'Mezun', 118, TRUE,485),
('Xəyal', 'İbrahimov', 49, '2001-10-26', '0708899002', 4, '2019-09-01', '2023-06-30', 'Oxuyur', 128, FALSE,375),
('Əlmir', 'Mustafayev', 50, '2002-08-01', '0512233448', 2, '2020-09-01', '2024-06-30', 'Oxuyur', 105, FALSE,574);

INSERT INTO faculties (id, faculty_name)
VALUES 
(1, 'Information Technologies'),
(2, 'Economics and Management'),
(3, 'Law and International Relations'),
(4, 'Architecture and Design');

INSERT INTO professions (faculty_id, id, profession_name)
VALUES 
(1, 101, 'Computer Engineering'),
(1, 107, 'Information Systems'),
(1, 110, 'Software Engineering'),
(2, 102, 'Economics'),
(2, 105, 'Management'),
(2, 108, 'Finance and Accounting'),
(3, 103, 'Law'),
(3, 109, 'International Relations'),
(3, 106, 'Human Rights'),
(4, 104, 'Architecture'),
(4, 112, 'Interior Design'),
(4, 120, 'Urban Planning'),
(1, 113, 'Artificial Intelligence Engineering'),
(1, 116, 'Cybersecurity'),
(2, 111, 'Business Administration'),
(2, 114, 'International Trade'),
(3, 115, 'Criminal Law'),
(3, 118, 'Diplomatic Relations'),
(4, 128, 'Landscape Architecture'),
(4, 141, 'Interior Design');

INSERT INTO subjects (profession_id, id, subject_name) VALUES
(101, 1, 'Mathematics'),
(101, 2, 'Algorithms and Data Structures'),
(101, 3, 'Computer Architecture'),
(101, 4, 'Introduction to Programming'),

(107, 1, 'Mathematics'),
(107, 5, 'Database Systems'),
(107, 6, 'Information Security'),
(107, 7, 'Information Systems Design'),

(110, 4, 'Introduction to Programming'),
(110, 8, 'OOP (Object-Oriented Programming)'),
(110, 9, 'Web Programming'),
(110, 10, 'Operating Systems'),

(102, 11, 'Microeconomics'),
(102, 12, 'Macroeconomics'),
(102, 13, 'Economic Theory'),
(102, 14, 'Statistics'),

(105, 15, 'Principles of Management'),
(105, 16, 'Marketing'),
(105, 17, 'Human Resource Management'),
(105, 18, 'Organizational Behavior'),

(108, 19, 'Principles of Finance'),
(108, 20, 'Accounting'),
(108, 21, 'Taxation and Tax Policy'),
(108, 22, 'Business Analytics'),

(103, 23, 'Theory of Law'),
(103, 24, 'Civil Law'),
(103, 25, 'Criminal Law'),
(103, 26, 'Constitutional Law'),

(109, 27, 'History of International Relations'),
(109, 28, 'Diplomacy and Protocol'),
(109, 29, 'International Law'),
(109, 30, 'Global Politics'),

(106, 31, 'Human Rights Law'),
(106, 32, 'European Law'),
(106, 33, 'Social Law'),
(106, 26, 'Constitutional Law'),

(104, 34, 'History of Architecture'),
(104, 35, 'Construction Technologies'),
(104, 36, 'Architectural Design'),
(104, 37, 'Design Theory'),

(112, 38, 'Basics of Interior Design'),
(112, 39, 'Color Theory'),
(112, 40, 'Material Technologies'),
(112, 41, 'Design Projecting'),

(120, 42, 'Theory of Urban Planning'),
(120, 43, 'Public Space Design'),
(120, 44, 'Environmental Planning'),
(120, 45, 'Digital Mapping'),

(113, 46, 'Introduction to Artificial Intelligence'),
(113, 47, 'Machine Learning'),
(113, 48, 'Data Science'),
(113, 49, 'Deep Learning'),

(116, 50, 'Introduction to Cybersecurity'),
(116, 51, 'Network Security'),
(116, 52, 'Cryptography'),
(116, 53, 'Ethical Hacking'),

(111, 54, 'Business Strategies'),
(111, 14, 'Statistics'),
(111, 55, 'Financial Management'),
(111, 56, 'International Business'),

(114, 57, 'Basics of International Trade'),
(114, 58, 'Logistics and Supply Chain'),
(114, 59, 'Trade Law'),
(114, 60, 'Economic Policy'),

(115, 25, 'Criminal Law'),
(115, 61, 'Criminalistics'),
(115, 62, 'Criminal Procedures'),
(115, 31, 'Human Rights Law'),

(118, 63, 'History of Diplomacy'),
(118, 64, 'Diplomatic Communication'),
(118, 65, 'International Conflicts'),
(118, 66, 'Diplomatic Correspondence'),

(128, 67, 'Basics of Landscape Architecture'),
(128, 68, 'Environmental Protection'),
(128, 69, 'Landscape Design'),
(128, 70, 'Botany'),

(141, 71, 'Interior Design Techniques'),
(141, 72, 'Lighting Design'),
(141, 73, 'Furniture Design'),
(141, 74, 'Digital Design Software');

INSERT INTO scores (student_id, subject_id, score)
VALUES
-- Computer Science (profession_id 101) students
(1, 1, 85), (1, 2, 78), (1, 3, 92), (1, 4, 88),
(10, 1, 76), (10, 2, 82), (10, 3, 85), (10, 4, 79),
(16, 1, 88), (16, 2, 91), (16, 3, 84), (16, 4, 87),
(31, 1, 82), (31, 2, 79), (31, 3, 85), (31, 4, 81),
(40, 1, 90), (40, 2, 87), (40, 3, 92), (40, 4, 85),

-- Information Systems (profession_id 107) students
(7, 1, 85), (7, 5, 92), (7, 6, 88), (7, 7, 90),
(19, 1, 78), (19, 5, 82), (19, 6, 75), (19, 7, 80),
(34, 1, 95), (34, 5, 98), (34, 6, 92), (34, 7, 97),
(43, 1, 80), (43, 5, 85), (43, 6, 78), (43, 7, 82),

-- Software Engineering (profession_id 110) students
(10, 4, 79), (10, 8, 82), (10, 9, 85), (10, 10, 78),

-- Economics (profession_id 102) students
(2, 11, 85), (2, 12, 78), (2, 13, 82), (2, 14, 80),
(23, 11, 78), (23, 12, 85), (23, 13, 80), (23, 14, 82),
(32, 11, 85), (32, 12, 88), (32, 13, 82), (32, 14, 85),
(44, 11, 92), (44, 12, 98), (44, 13, 91), (44, 14, 91),

-- Management (profession_id 105) students
(5, 15, 90), (5, 16, 88), (5, 17, 92), (5, 18, 85),
(38, 15, 82), (38, 16, 85), (38, 17, 78), (38, 18, 80),
(50, 15, 85), (50, 16, 82), (50, 17, 88), (50, 18, 85),

-- Finance (profession_id 108) students
(8, 19, 88), (8, 20, 92), (8, 21, 85), (8, 22, 90),
(26, 19, 85), (26, 20, 88), (26, 21, 82), (26, 22, 85),
(47, 19, 90), (47, 20, 92), (47, 21, 88), (47, 22, 91),

-- Law (profession_id 103) students
(3, 23, 85), (3, 24, 78), (3, 25, 82), (3, 26, 80),
(21, 23, 78), (21, 24, 82), (21, 25, 85), (21, 26, 80),
(36, 23, 82), (36, 24, 78), (36, 25, 80), (36, 26, 85),

-- International Relations (profession_id 109) students
(9, 27, 85), (9, 28, 88), (9, 29, 82), (9, 30, 90),
(24, 27, 82), (24, 28, 85), (24, 29, 88), (24, 30, 82),
(42, 27, 98), (42, 28, 92), (42, 29, 95), (42, 30, 93),

-- Human Rights Law (profession_id 106) students
(6, 31, 82), (6, 32, 78), (6, 33, 85), (6, 26, 80),
(39, 31, 85), (39, 32, 82), (39, 33, 78), (39, 26, 85),

-- Architecture (profession_id 104) students
(4, 34, 88), (4, 35, 85), (4, 36, 90), (4, 37, 92),

-- Interior Design (profession_id 112) students
(12, 38, 85), (12, 39, 88), (12, 40, 82), (12, 41, 90),

-- Urban Planning (profession_id 120) students
(20, 42, 88), (20, 43, 85), (20, 44, 90), (20, 45, 92),

-- Artificial Intelligence (profession_id 113) students
(13, 46, 90), (13, 47, 92), (13, 48, 88), (13, 49, 85),
(37, 46, 85), (37, 47, 88), (37, 48, 82), (37, 49, 90),
(46, 46, 88), (46, 47, 85), (46, 48, 90), (46, 49, 92),

-- Cybersecurity (profession_id 116) students
(25, 50, 85), (25, 51, 88), (25, 52, 90), (25, 53, 92),

-- Business Strategy (profession_id 111) students
(11, 54, 88), (11, 14, 85), (11, 55, 90), (11, 56, 92),
(29, 54, 82), (29, 14, 78), (29, 55, 85), (29, 56, 80),

-- International Trade (profession_id 114) students
(14, 57, 85), (14, 58, 88), (14, 59, 82), (14, 60, 90),
(17, 57, 78), (17, 58, 82), (17, 59, 85), (17, 60, 80),
(35, 57, 85), (35, 58, 90), (35, 59, 88), (35, 60, 92),

-- Criminal Law (profession_id 115) students
(15, 25, 88), (15, 61, 85), (15, 62, 90), (15, 31, 92),
(27, 25, 85), (27, 61, 88), (27, 62, 92), (27, 31, 90),

-- Diplomacy (profession_id 118) students
(18, 63, 90), (18, 64, 92), (18, 65, 88), (18, 66, 85),
(30, 63, 85), (30, 64, 88), (30, 65, 82), (30, 66, 90),
(48, 63, 88), (48, 64, 85), (48, 65, 90), (48, 66, 92),

-- Landscape Architecture (profession_id 128) students
(28, 67, 85), (28, 68, 88), (28, 69, 90), (28, 70, 92),
(49, 67, 82), (49, 68, 85), (49, 69, 88), (49, 70, 90),

-- Interior Architecture (profession_id 141) students
(41, 71, 88), (41, 72, 85), (41, 73, 90), (41, 74, 92),
(45, 71, 82), (45, 72, 78), (45, 73, 85), (45, 74, 80);

INSERT INTO experiences (id, student_id, company, start_date, end_date, salary)
VALUES
-- Aysel Məmmədova (1) - Computer Science
(1, 1, 'AzInTelecom', '2022-07-15', '2023-06-30', 1200),
(2, 1, 'Bakcell IT Department', '2023-07-10', NULL, 1500),

-- Elvin Hüseynov (2) - Economics
(3, 2, 'Pasha Bank', '2021-07-01', '2022-05-15', 1100),
(4, 2, 'Kapital Bank', '2022-06-01', NULL, 1800),

-- Ayxan Quliyev (5) - Management
(5, 5, 'Nar Mobile', '2020-07-01', '2021-12-31', 1000),
(6, 5, 'Azercell', '2022-01-15', NULL, 2000),

-- Kamran İsmayılov (7) - Information Systems
(7, 7, 'ABB Tech', '2022-07-20', NULL, 1300),
(8, 7, 'Cybernet LLC', '2023-01-15', NULL, 1450),

-- Şəbnəm Vəliyeva (8) - Finance
(9, 8, 'EY Azerbaijan', '2021-07-10', '2022-08-31', 1400),
(10, 8, 'Deloitte Azerbaijan', '2022-09-15', NULL, 1900),

-- Sevinc Baxışova (11) - Business Strategy
(11, 11, 'PwC Azerbaijan', '2022-07-01', NULL, 1250),
(12, 11, 'AzerGold', '2023-02-01', NULL, 1400),

-- Orxan Qasımov (12) - Interior Design
(13, 12, 'Apex Construction', '2021-07-15', '2023-01-31', 1500),
(14, 12, 'Azinko Design', '2023-02-15', NULL, 2200),

-- Rəna Xəlilova (15) - Law
(15, 15, 'Baker McKenzie Baku', '2022-07-10', NULL, 1350),

-- Rəşad Nağıyev (16) - Computer Science
(16, 16, 'Cybernet', '2020-07-01', '2021-12-31', 1100),
(17, 16, 'Rabitabank IT Department', '2022-01-15', NULL, 1600),

-- Emin Qurbanov (18) - Diplomacy
(18, 18, 'Ministry of Foreign Affairs', '2021-07-01', '2022-08-31', 900),
(19, 18, 'Embassy of Turkey', '2022-09-15', NULL, 1500),

-- Vüsal Əhmədov (20) - Urban Planning
(20, 20, 'Urban Group', '2022-07-01', NULL, 1700),

-- Fuad Ələkbərov (28) - Landscape Architecture
(21, 28, 'Landscape Design LLC', '2020-07-01', '2021-12-31', 1000),
(22, 28, 'Green Art Studio', '2022-01-15', NULL, 1800),

-- Şahnaz Quliyeva (48) - Diplomacy
(23, 48, 'UN Azerbaijan', '2020-07-01', '2021-12-31', 950),
(24, 48, 'British Embassy Baku', '2022-01-15', NULL, 1600),

-- Sona Həsənova (27) - Criminal Law
(25, 27, 'Prosecutor General Office', '2022-07-01', NULL, 1100),

-- İlkin Musayev (44) - Economics
(26, 44, 'SOCAR', '2021-07-01', '2022-05-31', 1300),
(27, 44, 'BP Azerbaijan', '2022-06-15', NULL, 2100),

-- Rəfail Ələkbərov (47) - Finance
(28, 47, 'AccessBank', '2022-07-01', NULL, 1450),

-- Əminə Qasımova (32) - Economics
(29, 32, 'State Economic University', '2021-07-01', '2022-08-31', 800),
(30, 32, 'Central Bank of Azerbaijan', '2022-09-15', NULL, 1500),

-- Zaur Abdullayev (35) - International Trade
(31, 35, 'Azexport', '2022-07-01', NULL, 1600),

-- Nigar Cəfərli (36) - Law
(32, 36, 'Legal Solutions LLC', '2021-07-01', '2022-05-31', 950),
(33, 36, 'Baku City Court', '2022-06-15', NULL, 1200),

-- Samir Məmmədov (41) - Interior Architecture
(34, 41, 'Space Design Studio', '2023-07-01', NULL, 1100),

-- Rahib Sadıqov (43) - Information Systems
(35, 43, 'Azercell Telecom', '2022-07-01', '2023-05-31', 1200),
(36, 43, 'B.EST Solutions', '2023-06-15', NULL, 1500),

-- Arzu Bağırova (23) - Economics
(37, 23, 'Bank Respublika', '2022-07-01', NULL, 1300),

-- Cavid Orucov (24) - International Relations
(38, 24, 'Azerbaijan Diplomatic Academy', '2021-07-01', '2022-08-31', 850),
(39, 24, 'Embassy of Germany', '2022-09-15', NULL, 1400),

-- Zümrüd Xudaverdiyeva (38) - Management
(40, 38, 'Pasha Insurance', '2023-07-01', NULL, 1250);

----------------------------ANALYSIS-----------------------------------	
-------------------Counting Students by Faculty------------------------
select faculty_name, count(*) number_of_students from (select s.student_id, s.faculty_id, f.faculty_name 
                                    from students as s left join faculties as f on s.faculty_id=f.id)
group by faculty_name

-----------------Students receiving an honors scholarship---------------
select name, surname, count(*) as count_ from (select s.name, s.surname, sc.score from students as s left JOIN
scores as sc on s.student_id=sc.student_id where sc.score>90)
group by name, surname
having count_=4

------------------Counting Students by Profession-------------------------
select profession_name, count(*) number_of_students from (select s.profession_id, p.profession_name 
                                    from students as s left join professions as p on s.profession_id=p.id)
group by profession_name

------------------Identify students with GPA below 51------------------------
select name, surname, avg(score_) as avg_score from (select s.name, s.surname, sc.score as score_
                                    from students as s left join scores as sc on s.student_id=sc.student_id)
group by name, surname
HAVING avg_score<51

--------------------Total number of students undergoing internship----------------------
SELECT count(*) as number_of_students from students
where experience=1

--------------Which specialties have the most students doing internships?"-------------
select profession_name, sum(experience) as number_of_students_in_internship from (select s.profession_id, p.profession_name,s.experience 
                                    from students as s left join professions as p on s.profession_id=p.id)
group by profession_name
ORDER by number_of_students_in_internship desc
LIMIT 1

-------------------The student with the highest GPA---------------
select name, surname, avg(score_) as avg_score from (select s.name, s.surname, sc.score as score_
                                    from students as s left join scores as sc on s.student_id=sc.student_id)
group by name, surname
order by avg_score DESC
limit 1

-------------------Students who completed the internship----------------------------------
select * from students
where end_date is not null

