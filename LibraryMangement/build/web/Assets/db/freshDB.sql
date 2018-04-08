create table "HR".ADMIN
(
	EMAIL VARCHAR(50),
	PASSWORD VARCHAR(50)
);


create table "HR".BOOK
(
	ID VARCHAR(50) not null primary key,
	NAME VARCHAR(100),
	LANGUAGE VARCHAR(100),
	AUTHOR VARCHAR(200),
	FLAG VARCHAR(10)
);


create table "HR".CONTACTREQUEST
(
	ID VARCHAR(20) not null primary key,
	FIRSTNAME VARCHAR(50),
	LASTNAME VARCHAR(50),
	EMAIL VARCHAR(50),
	DESCRIPTION VARCHAR(200)
);

create table "HR".ISSUE
(
	ID VARCHAR(50) not null primary key,
	BOOKID VARCHAR(50),
	CUSTOMERID VARCHAR(50),
	ISSUEDATE VARCHAR(50),
	RETURNDATE VARCHAR(50),
	FLAG VARCHAR(50)
);


create table "HR".LOGIN
(
	ID VARCHAR(100) not null primary key,
	EMAIL VARCHAR(50) not null,
	PASSWORD VARCHAR(50) not null,
	FLAG VARCHAR(5)
);


create table "HR".REGISTER
(
	ID VARCHAR(100) not null primary key,
	FIRSTNAME VARCHAR(50),
	LASTNAME VARCHAR(50),
	AGE VARCHAR(50),
	DOB VARCHAR(50),
	GENDER VARCHAR(50),
	ADDRESS VARCHAR(200),
	PHONENUMBER VARCHAR(50),
	EMAIL VARCHAR(50),
	PASSWORD VARCHAR(50)
);






INSERT INTO register
VALUES (
'21e6b7c',
'Shubham',
'Mhatre',
 '20',
'1996-11-04',
'Male',
'401/A neumec height vileparle east',
'9969742702',
'mhatreshubham78@gmail.com',
'pass@123'
);


INSERT INTO register
VALUES (
'ed1d4b4',
'Mohnish',
'Anjaria',
 '20',
'1996-11-04',
'Male',
'401/A Neumec Heights Shraddhanand Road',
'9969742702',
'anjariamohnish@gmail.com',
'pass@123'
);



INSERT INTO login
VALUES (
'21e6b7c',
'mhatreshubham78@gmail.com',
'pass@123',
'C'
);


INSERT INTO login
VALUES (
'ed1d4b4',
'anjariamohnish@gmail.com',
'pass@123',
'E'
);



INSERT INTO admin
VALUES (
'admin@gmail.com',
'admin'
);




INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('750f59a','Harry Potter and the Deathly Hallows', 'English', 'J. K. Rowling','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('37c8188','The Hobbit', 'English', 'J. R. R. Tolkien','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('a6980dd','1984', 'English', 'George Orwell','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('a41c510','Pride and Prejudice', 'English', 'Jane Austen','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('658f5c5','The Da Vinci Code', 'English', 'Dan Brown','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('130ad2e','To Kill a Mockingbird', 'English', 'Harper Lee','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('80890e5','The Catcher in the Rye', 'English', 'J. D. Salinger','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('422b221','The Great Gatsby', 'English', 'F. Scott Fitzgerald','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('687f03a','Twilight', 'English', 'Stephenie Meyer','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('5f50305','The Hunger Games', 'English', 'Suzanne Collins','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('4d440d7','Kite Runner', 'English', 'Khaled Hosseini','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('0011551','Jane Eyre', 'English', 'Charlotte Brontë','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('58b20d8','Animal Farm', 'English', 'George Orwell','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('6040da3','Brave New World', 'English', 'Aldous Huxley','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('ae52fd4','The Lord of the Rings', 'English', 'J. R. R. Tolkien','F');



INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('f46beb3','Bansuri', 'Hindi', 'Pandit Sohanlal Dwivedi','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('163ea51','Siddhidatri Vakk Sadhana', 'Hindi', 'Acharya Shriram Sharma','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('905f469','Panch Praan Panch Dev', 'Hindi', 'Acharya Shriram Sharma','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('c630780','Jyotishchandrika', 'Hindi', 'Gangaprasad','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('34b6618','Prachin Bharat Mein Rasayan Ka Vikas', 'Hindi', 'Swami Satyaprakash Saraswati','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('33dfbc5','Lal Kranti', 'Hindi', 'Pandit Rama Shanker Awasthi','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('d95c38c','Jyotish Sarv Sangrah', 'Hindi', 'Ramswaroop Sharma','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('5078245','Dasha Mahavidhya', 'Hindi', 'Gita','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('137629c','Geeta Darshan', 'Hindi', 'Osho','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('0b01c0c','Bhoot Damar Tantra', 'Hindi', 'Dr. Brahmanand Tripathi','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('1c525a8','Samudrik Shastra', 'Hindi', 'Chotelal Jain','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('4551e52','Panchbhut Vigyanam', 'Hindi', 'Das Upendranath','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('e40e5c6','Yoga and Perfection', 'Hindi', 'Swami Purnananda','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('e36cd1e','Tantrik Ki Diary', 'Hindi', 'Sushil Kumar','F');



INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('f1d1b6e','Mrityunjaya', 'Marathi', 'Shivaji Sawant','O');

INSERT INTO HR.BOOK(ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('18f8d9b','Shriman Yogi', 'Marathi', 'Ranjit Desai','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('9a15e18','Panipat', 'Marathi', 'Vishwas Patil','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('c11964f','Yugandhar', 'Marathi', 'Shivaji Sawant','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('69d4634','Shyamchi Aai', 'Marathi', 'Sane Gurujee','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('2a82f97','Raja ShivChatrapati', 'Marathi', 'Babasaheb Purandare','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('5638b19','Yayati: A Classic Tale of Lust', 'Marathi', 'Vishnu Sakharam Khandekar','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('8fb9e84','Duniyadari', 'Marathi', 'Suhas Shirvalkar','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('4251ce1','Partner', 'Marathi', 'V. P. Kale','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('0d9f3d8','Musafir', 'Marathi', 'Achyut Godbole','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('c029bb8','Teachings of Swami Vivekananda', 'Marathi', 'Swami Vivekananda','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('d5851af','Vyakti Aani Valli', 'Marathi', 'P. L. Deshpande','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('0bc9e96','Shala', 'Marathi', 'Milind Bokil','F');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('98fc81d','Radheya', 'Marathi', 'Ranjit Desai','O');

INSERT INTO HR.BOOK (ID, "NAME", "LANGUAGE", "AUTHOR","FLAG") VALUES 
('493544b','The Secret of Nagas', 'Marathi', 'Amish Tripathi','F');



