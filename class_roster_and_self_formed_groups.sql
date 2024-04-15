-- -------------------------------------------------------------
-- TablePlus 5.3.6(496)
--
-- https://tableplus.com/
--
-- Database: project_groups
-- Generation Time: 2024-02-08 23:28:46.1260
-- -------------------------------------------------------------

SET GLOBAL log_output = 'TABLE';-- 2. Activate logging ON
 SET GLOBAL general_log = 'ON';-- 3. Verify and confirm the settings
 SHOW VARIABLES WHERE variable_name = 'log_output';
 SHOW VARIABLES WHERE variable_name = 'general_log';
 
 SELECT *
 FROM mysql.general_log
 WHERE command_type = 'Query'
 AND argument LIKE '%++HW3%'
 AND argument NOT LIKE '%general_log%'
 ORDER BY event_time DESC;
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `class_roster`;
CREATE TABLE `class_roster` (
  `studentid` VARCHAR(10) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `lastname` VARCHAR(100) DEFAULT NULL,
  `firstname` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `self_formed_group`;
CREATE TABLE `self_formed_group` (
  `GroupNo` INT DEFAULT NULL,
  `StudentID1` VARCHAR(10) DEFAULT NULL,
  `StudentID2` VARCHAR(10) DEFAULT NULL,
  `StudentID3` VARCHAR(10) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `class_roster` (`studentid`, `email`, `lastname`, `firstname`) VALUES
('1000001', 'frank1@adventure-works.com', 'Miller', 'Frank'),
('1000002', 'prasanna0@adventure-works.com', 'Samarawickrama', 'Prasanna'),
('1000003', 'reuben0@adventure-works.com', 'D\'sa', 'Reuben'),
('1000004', 'garrett1@adventure-works.com', 'Vargas', 'Garrett'),
('1000005', 'shelley0@adventure-works.com', 'Dyck', 'Shelley'),
('1000006', 'ryan0@adventure-works.com', 'Cornelsen', 'Ryan'),
('1000007', 'diane2@adventure-works.com', 'Tibbott', 'Diane'),
('1000008', 'ken1@adventure-works.com', 'Myer', 'Ken'),
('1000009', 'pamela0@adventure-works.com', 'Ansman-Wolfe', 'Pamela'),
('1000010', 'rachel0@adventure-works.com', 'Valdez', 'Rachel'),
('1000011', 'russell0@adventure-works.com', 'Hunter', 'Russell'),
('1000012', 'lorraine0@adventure-works.com', 'Nay', 'Lorraine'),
('1000013', 'doris0@adventure-works.com', 'Hartwig', 'Doris'),
('1000014', 'simon0@adventure-works.com', 'Rapier', 'Simon'),
('1000015', 'erin0@adventure-works.com', 'Hagens', 'Erin'),
('1000016', 'robert0@adventure-works.com', 'Rounthwaite', 'Robert'),
('1000017', 'jim0@adventure-works.com', 'Scardelis', 'Jim'),
('1000018', 'laura0@adventure-works.com', 'Steele', 'Laura'),
('1000019', 'rostislav0@adventure-works.com', 'Shabalin', 'Rostislav'),
('1000020', 'kathie0@adventure-works.com', 'Flood', 'Kathie'),
('1000021', 'michael8@adventure-works.com', 'Sullivan', 'Michael'),
('1000022', 'françois0@adventure-works.com', 'Ajenstat', 'François'),
('1000023', 'sharon0@adventure-works.com', 'Salavaria', 'Sharon'),
('1000024', 'shu0@adventure-works.com', 'Ito', 'Shu'),
('1000025', 'david8@adventure-works.com', 'Campbell', 'David'),
('1000026', 'mihail0@adventure-works.com', 'Frintu', 'Mihail'),
('1000027', 'sandra0@adventure-works.com', 'Reátegui Alayo', 'Sandra'),
('1000028', 'mandar0@adventure-works.com', 'Samant', 'Mandar'),
('1000029', 'stuart1@adventure-works.com', 'Macrae', 'Stuart'),
('1000030', 'krishna0@adventure-works.com', 'Sunkammurali', 'Krishna'),
('1000031', 'peter0@adventure-works.com', 'Krebs', 'Peter'),
('1000032', 'david1@adventure-works.com', 'Johnson', 'David'),
('1000033', 'tengiz0@adventure-works.com', 'Kharatishvili', 'Tengiz'),
('1000034', 'tawana0@adventure-works.com', 'Nusbaum', 'Tawana'),
('1000035', 'bob0@adventure-works.com', 'Hohman', 'Bob'),
('1000036', 'stephanie0@adventure-works.com', 'Conroy', 'Stephanie'),
('1000037', 'lane0@adventure-works.com', 'Sacksteder', 'Lane'),
('1000038', 'lolan0@adventure-works.com', 'Song', 'Lolan'),
('1000039', 'eric0@adventure-works.com', 'Gubbels', 'Eric'),
('1000040', 'bryan0@adventure-works.com', 'Baker', 'Bryan'),
('1000041', 'sootha0@adventure-works.com', 'Charncherngkha', 'Sootha'),
('1000042', 'benjamin0@adventure-works.com', 'Martin', 'Benjamin'),
('1000043', 'shane0@adventure-works.com', 'Kim', 'Shane'),
('1000044', 'frank0@adventure-works.com', 'Lee', 'Frank'),
('1000045', 'sariya0@adventure-works.com', 'Harnpadoungsataya', 'Sariya');

INSERT INTO `self_formed_group` (`GroupNo`, `StudentID1`, `StudentID2`, `StudentID3`) VALUES
(1, '1000036', '1000021', '1000019'),
(2, '1000042', '1000040', '1000008'),
(3, '1000001', '1000030', '1000027'),
(4, '1000023', '1000039', '1000045'),
(5, '1000018', '1000038', NULL),
(6, '1000031', '1000003', '1000002'),
(7, '1000011', '1000012', NULL),
(8, '1000044', '1000043', '1000037'),
(9, '1000015', '1000035', NULL),
(10, '1000017', '1000025', '1000020'),
(11, '1000006', '1000029', NULL),
(12, '1000032', '1000034', '1000028'),
(13, NULL, NULL, NULL),
(14, NULL, NULL, NULL),
(15, NULL, NULL, NULL),
(16, NULL, NULL, NULL),
(17, NULL, NULL, NULL),
(18, NULL, NULL, NULL),
(19, NULL, NULL, NULL),
(20, NULL, NULL, NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


 
 
  WITH cte_step1 AS(
	SELECT /* ++1873964 ++HW3 */ groupno, CONCAT(LPAD(groupno,2,'0'),'1') AS seatnumber, studentid1 AS Student_ID
	FROM self_formed_group
	
	UNION ALL
	SELECT groupno, CONCAT(LPAD(groupno,2,'0'), '2') AS seatnumber,studentid2
	FROM self_formed_group
	
	UNION  ALL
	SELECT groupno, CONCAT(LPAD(groupno,2,'0'),'3') AS seatnumber,studentid3
	FROM self_formed_group
	
	ORDER BY seatnumber 
 ),
 invalidcheck AS (
	SELECT *
	FROM cte_step1
	WHERE student_id NOT IN (SELECT studentid FROM class_roster)
	/*HAVING COUNT(student_id) < 2*/
	ORDER BY student_id
 ),
 
 /*dupcheck as (
	select s.groupno,s.seatnumber, s.student_id, v.counter, ROW_NUMBER() OVER (PARTITION BY student_id) AS 'RowNumber'
	from cte_step1 as s
	left outer join validcheck as v
	on s.student_id = v.student_id
	where v.counter > 1
	order by student_id
	
 ),*/
 
 dupcheck AS (
	SELECT groupno,seatnumber, student_id, ROW_NUMBER() OVER (PARTITION BY student_id) AS 'Number_of_ids'
	FROM cte_step1
	WHERE student_id IS NOT NULL
	ORDER BY student_id
	
 ),
 
/* dupdelete as (
	select groupno,seatnumber, student_id
	from dupcheck
	where rownumber = 1
 ),*/
 
 mergetables AS (
	SELECT d.groupno,d.seatnumber,d.student_id
	FROM dupcheck AS d
	LEFT OUTER JOIN invalidcheck AS v
	ON d.seatnumber = v.seatnumber
	WHERE Number_of_ids = 1 AND 
	d.student_id NOT IN (SELECT student_id FROM invalidcheck)
	
	
 ),
 
 
cte_step3 AS (
 SELECT /* ++1873964 ++HW3 */ groupno ,seatnumber ,  student_id 
 FROM cte_step1
 
 WHERE student_id IS NOT NULL /*AND student_id IN (SELECT student_id FROM validcheck)*/
 AND seatnumber IN (SELECT seatnumber FROM mergetables)
 ORDER BY seatnumber
 ),

 
 cte_step4 AS (
 SELECT /* ++1873964 ++HW3 */ studentid,  ROW_NUMBER() OVER (ORDER BY RAND()) AS AllocationID
 FROM class_roster AS a
 LEFT OUTER JOIN cte_step3 AS b
 ON a.studentid = b.student_id
 WHERE a.studentid NOT IN (SELECT student_id FROM cte_step3)
 
 ),
 
 cte_step5 AS (
	SELECT /* ++1873964 ++HW3 */ groupno ,seatnumber , ROW_NUMBER() OVER (ORDER BY seatnumber) AS AllocationID
	FROM cte_step1
	WHERE student_id IS NULL /*OR student_id NOT IN (SELECT student_id FROM validcheck)*/
	OR seatnumber NOT IN (SELECT seatnumber FROM mergetables)
	ORDER BY seatnumber
 ),
 
 cte_step6 AS (
 SELECT /* ++1873964 ++HW3 */ a.groupno,a.seatnumber, b.studentid
 FROM cte_step5 AS a
 RIGHT OUTER JOIN cte_step4 AS b
 ON a.allocationid = b.allocationid
 
 )

 SELECT *
 FROM cte_step1
 WHERE student_id != (SELECT student_id FROM mergetables WHERE );
 /*step 6 is for non assigned students and step 3 is self assigned students*/
 
 SELECT /* ++1873964 ++HW3 */ a.groupno, b.studentid, CONCAT("Random") AS AssignType, b.firstname, b.lastname, b.email 
 FROM class_roster AS b
 RIGHT OUTER JOIN cte_step6 AS a
 ON a.studentid = b.studentid
 UNION ALL
 SELECT a.groupno, b.studentid, CONCAT("Self") AS AssignType, b.firstname, b.lastname, b.email
 FROM class_roster AS b
 RIGHT OUTER JOIN cte_step3 AS a
 ON a.student_id = b.studentid
 
 ORDER BY groupno;
 
 
 
 
 