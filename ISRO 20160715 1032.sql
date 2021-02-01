-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.11-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema isro
--

CREATE DATABASE IF NOT EXISTS isro;
USE isro;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `fname` varchar(60) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `pass` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`fname`,`lname`,`email`,`pass`) VALUES 
 ('Lakshya','Khandelwal','lk@google.com','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `file` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `catagory` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `downloads`
--

/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` (`sno`,`name`,`message`,`file`,`image`,`catagory`) VALUES 
 (1,'Quantitative Aptitude by R.S. Aggarwal','Quantitative Aptitude For Competitive Examinations comprehensively covers topics for the Quantitative Aptitude and Data Interpretation section of competitive exams like management entrance exams, job recruitment exams etc.','quantitative_aptitude.pdf','quantitative_aptitude.jpeg','study_material'),
 (2,'Verbal and Non Verbal Reasoning by R.S. Aggarwal','A Modern Approach To Verbal & Non-Verbal Reasoning is a book that is geared towards enabling its readers to better their reasoning abilities and crack this section in competitive examinations.','verbal_non_verbal_reasoning.pdf','verbal_non_verbal_reasoning.jpg','study_material'),
 (3,'General English by R.S. Aggarwal','This is the ideal English grammar guide for several competitive examinations like Bank PO, RBI, Railway Recruitment, NDA, CDS, IES, MBA, and Hotel Management exams.','general_english.pdf','general_english.jpg','study_material');
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;


--
-- Definition of table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `first` text NOT NULL,
  `second` text NOT NULL,
  `third` text NOT NULL,
  `fourth` text NOT NULL,
  `answer` enum('first','second','third','fourth') NOT NULL,
  `year` varchar(10) NOT NULL,
  `degree` varchar(60) NOT NULL,
  `subject` text NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`sno`,`question`,`first`,`second`,`third`,`fourth`,`answer`,`year`,`degree`,`subject`) VALUES 
 (1,'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','120 m','180 m','324 m','150 m','fourth','2016','B.Sc','Aptitude'),
 (2,'A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:','45 km/h','50 km/h','54 km/h','55 km/h','second','2016','B.Sc','Aptitude'),
 (3,'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','200 m','225 m','245 m','250 m','third','2016','B.Sc','Aptitude'),
 (4,'Two trains running in opposite directions cross a man standing on the platform in 27 seconds and 17 seconds respectively and they cross each other in 23 seconds. The ratio of their speeds is:','1 : 3','3 : 2','3 : 4','None','second','2016','B.Sc','Aptitude'),
 (5,'A train passes a station platform in 36 seconds and a man standing on the platform in 20 seconds. If the speed of the train is 54 km/hr, what is the length of the platform?','120 m','240 m','300 m','None','second','2016','B.Sc','Aptitude'),
 (6,'A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?','65 sec','89 sec','100 sec','150 sec','second','2016','B.Sc','Aptitude'),
 (7,'Two trains of equal length are running on parallel lines in the same direction at 46 km/hr and 36 km/hr. The faster train passes the slower train in 36 seconds. The length of each train is:','50 m','72 m','80 m','82 m','first','2016','B.Sc','Aptitude'),
 (8,'A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?','40 sec','42 sec','45 sec','48 sec','first','2016','B.Sc','Aptitude'),
 (9,'A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :','1/4','1/10','7/15','8/15','fourth','2016','B.Sc','Aptitude'),
 (10,'A can lay railway track between two given stations in 16 days and B can do the same job in 12 days. With help of C, they did the job in 4 days only. Then, C alone can do the job in:','46/5 days','47/5 days','48/5 days','10','third','2016','B.Sc','Aptitude'),
 (11,'A, B and C can do a piece of work in 20, 30 and 60 days respectively. In how many days can A do the work if he is assisted by B and C on every third day?','12 days','15 days','16 days','18 days','second','2016','B.Sc','Aptitude'),
 (12,'A is thrice as good as workman as B and therefore is able to finish a job in 60 days less than B. Working together, they can do it in:','20 days','45/2 days','25 days','30 days','second','2016','B.Sc','Aptitude'),
 (13,'A alone can do a piece of work in 6 days and B alone in 8 days. A and B undertook to do it for Rs. 3200. With the help of C, they completed the work in 3 days. How much is to be paid to C?','Rs. 375','Rs. 400','Rs. 600','Rs. 800','second','2016','B.Sc','Aptitude'),
 (14,'Alfred buys an old scooter for Rs. 4700 and spends Rs. 800 on its repairs. If he sells the scooter for Rs. 5800, his gain percent is:','32/7%','60/11%','10%','12%','second','2016','B.Sc','Aptitude'),
 (15,'The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:','15','16','18','25','second','2016','B.Sc','Aptitude'),
 (16,'If selling price is doubled, the profit triples. Find the profit percent.','200/3','100','316/3','120','second','2016','B.Sc','Aptitude'),
 (17,'In a certain store, the profit is 320% of the cost. If the cost increases by 25% but the selling price remains constant, approximately what percentage of the selling price is the profit?','30%','70%','100%','250%','second','2016','B.Sc','Aptitude'),
 (18,'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?','3','4','5','6','third','2016','B.Sc','Aptitude'),
 (19,'The percentage profit earned by selling an article for Rs. 1920 is equal to the percentage loss incurred by selling the same article for Rs. 1280. At what price should the article be sold to make 25% profit?','Rs. 2000','Rs. 2200','Rs. 2400','Data inadequate','first','2016','B.Sc','Aptitude'),
 (20,'Father is aged three times more than his son Ronit. After 8 years, he would be two and a half times of Ronit\'s age. After further 8 years, how many times would he be of Ronit\'s age?','2 times','5/2 times','11/4 times','3 times','first','2016','B.Sc','Aptitude'),
 (21,'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child?','4 years','8 years','10 years','None','first','2016','B.Sc','Logical Reasoning'),
 (22,'A father said to his son, \"I was as old as you are at the present at the time of your birth\". If the father\'s age is 38 years now, the son\'s age five years back was:','14 years','19 years','33 years','38 years','first','2016','B.Sc','Logical Reasoning'),
 (23,'A is two years older than B who is twice as old as C. If the total of the ages of A, B and C be 27, the how old is B?','7','8','9','10','fourth','2016','B.Sc','Logical Reasoning'),
 (24,'Present ages of Sameer and Anand are in the ratio of 5 : 4 respectively. Three years hence, the ratio of their ages will become 11 : 9 respectively. What is Anand\'s present age in years?','24','27','40','None','first','2016','B.Sc','Logical Reasoning'),
 (25,'A man is 24 years older than his son. In two years, his age will be twice the age of his son. The present age of his son is:','14 years','18 years','20 years','22 years','fourth','2016','B.Sc','Logical Reasoning'),
 (26,'From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?','564','645','735','756','fourth','2016','B.Sc','Logical Reasoning'),
 (27,'In how many different ways can the letters of the word \'LEADING\' be arranged in such a way that the vowels always come together?','360','480','720','5040','third','2016','B.Sc','Logical Reasoning'),
 (28,'Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed?','210','1050','25200','21400','third','2016','B.Sc','Logical Reasoning'),
 (29,'In how many different ways can the letters of the word \'CORPORATION\' be arranged so that the vowels always come together?','810','1440','2880','50400','fourth','2016','B.Sc','Logical Reasoning'),
 (30,'In how many ways can the letters of the word \'LEADER\' be arranged?','72','144','360','720','third','2016','B.Sc','Logical Reasoning'),
 (31,'In a group of 6 boys and 4 girls, four children are to be selected. In how many different ways can they be selected such that at least one boy should be there?','159','194','205','209','fourth','2016','B.Sc','Logical Reasoning'),
 (32,'A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?','3.6','7.2','8.4','10','second','2016','B.Sc','Logical Reasoning'),
 (33,'An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1 hours, it must travel at a speed of:','300 kmph','360 kmph','600 kmph','720 kmph','fourth','2016','B.Sc','Logical Reasoning'),
 (34,'If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:','50 km','56 km','70km','80 km','first','2016','B.Sc','Logical Reasoning'),
 (35,'A train can travel 50% faster than a car. Both start from point A at the same time and reach point B 75 kms away from A at the same time. On the way, however, the train lost about 12.5 minutes while stopping at the stations. The speed of the car is:','100 kmph','110 kmph','120 kmph','130 kmph','third','2016','B.Sc','Logical Reasoning'),
 (36,'Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?','9','10','12','20','second','2016','B.Sc','Logical Reasoning'),
 (37,'In a flight of 600 km, an aircraft was slowed down due to bad weather. Its average speed for the trip was reduced by 200 km/hr and the time of flight increased by 30 minutes. The duration of the flight is:','1 hour','2 hour','3 hour','4 hour','first','2016','B.Sc','Logical Reasoning'),
 (38,'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:','Rs. 650','Rs. 690','Rs. 698','Rs. 700','third','2016','B.Sc','Logical Reasoning'),
 (39,'Mr. Thomas invested an amount of Rs. 13,900 divided in two different schemes A and B at the simple interest rate of 14% p.a. and 11% p.a. respectively. If the total amount of simple interest earned in 2 years be Rs. 3508, what was the amount invested in Scheme B?','Rs. 6400','Rs. 6500','Rs. 7200','Rs. 7500','first','2016','B.Sc','Logical Reasoning'),
 (40,'A sum fetched a total simple interest of Rs. 4016.25 at the rate of 9 p.c.p.a. in 5 years. What is the sum?','Rs. 4462.50','Rs. 8320.50','Rs. 8900','Rs. 8925','fourth','2015','B.Sc','Logical Reasoning'),
 (41,'How much time will it take for an amount of Rs. 450 to yield Rs. 81 as interest at 4.5% per annum of simple interest?','3.5 years','4 years','4.5 years','5 years','second','2015','B.Arch','Verbal Reasoning'),
 (42,'Reena took a loan of Rs. 1200 with simple interest for as many years as the rate of interest. If she paid Rs. 432 as interest at the end of the loan period, what was the rate of interest?','3.6','6','18','None','second','2015','B.Arch','Verbal Reasoning'),
 (43,'A sum of Rs. 12,500 amounts to Rs. 15,500 in 4 years at the rate of simple interest. What is the rate of interest?','3%','4%','5%','6%','fourth','2015','B.Arch','Verbal Reasoning'),
 (44,'A bank offers 5% compound interest calculated on half-yearly basis. A customer deposits Rs. 1600 each on 1st January and 1st July of a year. At the end of the year, the amount he would have gained by way of interest is:','Rs. 120','Rs. 121','Rs. 122','Rs. 123','second','2015','B.Arch','Verbal Reasoning'),
 (45,'The difference between simple and compound interests compounded annually on a certain sum of money for 2 years at 4% per annum is Re. 1. The sum (in Rs.) is:','625','630','640','650','first','2015','B.Arch','Verbal Reasoning'),
 (46,'There is 60% increase in an amount in 6 years at simple interest. What will be the compound interest of Rs. 12,000 after 3 years at the same rate?','Rs. 2160','Rs. 3120','Rs. 3972','Rs. 6240','third','2015','B.Arch','Verbal Reasoning'),
 (47,'What is the difference between the compound interests on Rs. 5000 for 1 years at 4% per annum compounded yearly and half-yearly?','Rs. 2.04','Rs. 3.06','Rs. 4.80','Rs. 8.30','first','2015','B.Arch','Verbal Reasoning'),
 (48,'The compound interest on Rs. 30,000 at 7% per annum is Rs. 4347. The period (in years) is:','2','5/2','3','4','first','2015','B.Arch','Verbal Reasoning'),
 (49,'What will be the compound interest on a sum of Rs. 25,000 after 3 years at the rate of 12 p.c.p.a.?','Rs. 9000.30','Rs. 9720','Rs. 10123.20','Rs. 10483.20','third','2015','B.Arch','Verbal Reasoning'),
 (50,'Look at this series: 2, 1, (1/2), (1/4), ... What number should come next?','1/3','1/8','2/8','1/16','second','2015','B.Arch','Verbal Reasoning'),
 (51,'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?','7','10','12','13','second','2015','B.Arch','Verbal Reasoning'),
 (52,'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?','20','22','23','26','second','2015','B.Arch','Verbal Reasoning'),
 (53,'Look at this series: 22, 21, 23, 22, 24, 23, ... What number should come next?','22','24','25','26','third','2015','B.Arch','Verbal Reasoning'),
 (54,'Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?','12','14','27','53','second','2015','B.Arch','Verbal Reasoning'),
 (55,'Look at this series: 21, 9, 21, 11, 21, 13, 21, ... What number should come next?','14','15','21','23','second','2015','B.Arch','Verbal Reasoning'),
 (56,'Look at this series: 58, 52, 46, 40, 34, ... What number should come next?','26','28','30','32','second','2015','B.Arch','Verbal Reasoning'),
 (57,'Tanya is older than Eric. Cliff is older than Tanya. Eric is older than Cliff. If the first two statements are true, the third statement is','true','false','uncertain','none','second','2015','B.Arch','Verbal Reasoning'),
 (58,'Blueberries cost more than strawberries. Blueberries cost less than raspberries. Raspberries cost more than strawberries and blueberries. If the first two statements are true, the third statement is','true','false','uncertain','none','first','2015','B.Arch','Verbal Reasoning'),
 (59,'All the trees in the park are flowering trees. Some of the trees in the park are dogwoods. All dogwoods in the park are flowering trees. If the first two statements are true, the third statement is','true','false','uncertain','none','first','2015','B.Arch','Verbal Reasoning'),
 (60,'Mara runs faster than Gail. Lily runs faster than Mara. Gail runs faster than Lily. If the first two statements are true, the third statement is','true','false','uncertain','none','second','2015','B.Arch','Verbal Reasoning'),
 (61,'The Kingston Mall has more stores than the Galleria. The Four Corners Mall has fewer stores than the Galleria. The Kingston Mall has more stores than the Four Corners Mall. If the first two statements are true, the third statement is','true','false','uncertain','none','first','2015','B.Arch','Verbal Ability'),
 (62,'All the tulips in Zoe\'s garden are white. All the pansies in Zoe\'s garden are yellow. All the flowers in Zoe\'s garden are either white or yellow If the first two statements are true, the third statement is','true','false','uncertain','none','third','2015','B.Arch','Verbal Ability'),
 (63,'During the past year, Josh saw more movies than Stephen. Stephen saw fewer movies than Darren. Darren saw more movies than Josh. If the first two statements are true, the third statement is','true','false','uncertain','none','third','2015','B.Arch','Verbal Ability'),
 (64,'Rover weighs less than Fido. Rover weighs more than Boomer. Of the three dogs, Boomer weighs the least. If the first two statements are true, the third statement is','true','false','uncertain','none','first','2015','B.Arch','Verbal Ability'),
 (65,'SCD, TEF, UGH, ____, WKL','CMN','UJI','VIJ','IJT','third','2015','B.Arch','Verbal Ability'),
 (66,'FAG, GAF, HAI, IAH, ____','JAK','HAL','HAK','JAI','first','2015','B.Arch','Verbal Ability'),
 (67,'ELFA, GLHA, ILJA, _____, MLNA','OLPA','KLMA','LLMA','KLLA','fourth','2015','B.Arch','Verbal Ability'),
 (68,'CMM, EOO, GQQ, _____, KUU','GRR','GSS','ISS','ITT','third','2015','B.Arch','Verbal Ability'),
 (69,'QPO, NML, KJI, _____, EDC','HGF','CAB','JKL','GHI','first','2015','B.Arch','Verbal Ability'),
 (70,'JAK, KBL, LCM, MDN, _____','OEP','NEO','MEN','PFQ','second','2015','B.Arch','Verbal Ability'),
 (71,'BCB, DED, FGF, HIH, ___','JKJ','HJH','IJI','JKJ','first','2015','B.Arch','Verbal Ability'),
 (72,'Odometer is to mileage as compass is to','speed','hiking','needle','direction','fourth','2015','B.Arch','Verbal Ability'),
 (73,'Marathon is to race as hibernation is to','winter','bear','dream','sleep','fourth','2015','B.Arch','Verbal Ability'),
 (74,'Window is to pane as book is to','novel','glass','cover','page','fourth','2015','B.Arch','Verbal Ability'),
 (75,'Cup is to coffee as bowl is to','dish','soup','spoon','food','second','2015','B.Arch','Verbal Ability'),
 (76,'Yard is to inch as quart is to','gallon','ounce','milk','liquid','second','2015','B.Arch','Verbal Ability'),
 (77,'Elated is to despondent as enlightened is to','aware','ignorant','miserable','tolerance','second','2015','B.Arch','Verbal Ability'),
 (78,'Optimist is to cheerful as pessimist is to','gloomy','mean','petty','helpful','first','2015','B.Arch','Verbal Ability'),
 (79,'Reptile is to lizard as flower is to','petal','stem','daisy','alligator','third','2015','B.Arch','Verbal Ability'),
 (80,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','We discussed about the problem so thoroughly','on the eve of the examination','that I found it very easy to work it out.','No error','first','2015','B.Arch','Verbal Ability'),
 (81,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','An Indian ship','laden with merchandise','got drowned in the Pacific Ocean.','No error.','third','2014','B.Tech','General Knowledge'),
 (82,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','I could not put up in a hotel','because the boarding and lodging charges','were exorbitant.','No error.','first','2014','B.Tech','General Knowledge'),
 (83,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','The Indian radio','which was previously controlled by the British rulers','is free now from the narrow vested interests.','No error.','third','2014','B.Tech','General Knowledge'),
 (84,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','If I had known','this yesterday','I will have helped him.','No error','third','2014','B.Tech','General Knowledge'),
 (85,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','A lot of travel delay is caused','due to the inefficiency and lack of good management','on behalf of the railways.','No error','third','2014','B.Tech','General Knowledge'),
 (86,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','Having received your letter','this morning, we are writing','to thank you for the same.','No error','fourth','2014','B.Tech','General Knowledge'),
 (87,'Read the each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any):','If you lend him a book','he will lend it to some one else','and never you will get it back.','No error','third','2014','B.Tech','General Knowledge'),
 (88,'To make clean breast of','To gain prominence','To praise oneself','To confess without of reserve','To destroy before it blooms','third','2014','B.Tech','General Knowledge'),
 (89,'To keeps one\'s temper','To become hungry','To be in good mood','To preserve ones energy','To be aloof from','second','2014','B.Tech','General Knowledge'),
 (90,'To catch a tartar','To trap wanted criminal with great difficulty','To catch a dangerous person','To meet with disaster','To deal with a person who is more than one\'s match','second','2014','B.Tech','General Knowledge'),
 (91,'To drive home','To find one\'s roots','To return to place of rest','Back to original position','To emphasise','fourth','2014','B.Tech','General Knowledge'),
 (92,'To have an axe to grind','A private end to serve','To fail to arouse interest','To have no result','To work for both sides','first','2014','B.Tech','General Knowledge'),
 (93,'To cry wolf','To listen eagerly','To give false alarm','To turn pale','To keep off starvation','second','2014','B.Tech','General Knowledge'),
 (94,'To end in smoke','To make completely understand','To ruin oneself','To excite great applause','To overcome someone','second','2014','B.Tech','General Knowledge'),
 (95,'Pointing to a photograph of a boy Suresh said, \"He is the son of the only son of my mother.\" How is Suresh related to that boy?','Brother','Uncle','Cousin','Father','fourth','2014','B.Tech','General Knowledge'),
 (96,'If A + B means A is the mother of B; A - B means A is the brother B; A % B means A is the father of B and A x B means A is the sister of B, which of the following shows that P is the maternal uncle of Q?','Q - N + M x P','P + S x N - Q','P - M + N x Q','Q - S % P','third','2014','B.Tech','General Knowledge'),
 (97,'If A is the brother of B; B is the sister of C; and C is the father of D, how D is related to A?','Brother','Sister','Nephew','Can\'t be determined','fourth','2014','B.Tech','General Knowledge'),
 (98,'If A + B means A is the brother of B; A - B means A is the sister of B and A x B means A is the father of B. Which of the following means that C is the son of M?','M - N x C + F','F - C + N x M','N + M - F x C','M x N - C + F','fourth','2014','B.Tech','General Knowledge'),
 (99,'Introducing a boy, a girl said, \"He is the son of the daughter of the father of my uncle.\" How is the boy related to the girl?','Brother','Nephew','Uncle','Son-in-law','first','2014','B.Tech','General Knowledge'),
 (100,'Pointing to a photograph Lata says, \"He is the son of the only son of my grandfather.\" How is the man in the photograph related to Lata?','Brother','Uncle','Cousin','Data is inadequate','first','2014','B.Tech','General Knowledge'),
 (101,'If A + B means A is the brother of B; A x B means A is the son of B; and A % B means B is the daughter of A then which of the following means M is the maternal uncle of N?','M + O x N','M % O x N + P','M + O % N','None of these','fourth','2014','B.Tech','Basic Questions'),
 (102,'If A + B means A is the father of B; A - B means A is the brother B; A % B means A is the wife of B and A x B means A is the mother of B, which of the following shows that M is the maternal grandmother of T?','M x N % S + T','M x N - S % T','M x S - N % T','M x N x S % T','first','2014','B.Tech','Basic Questions'),
 (103,'Pointing to a photograph. Bajpai said, \"He is the son of the only daughter of the father of my brother.\" How Bajpai is related to the man in the photograph?','Nephew','Brother','Father','Maternal Uncle','fourth','2014','B.Tech','Basic Questions'),
 (104,'One morning Udai and Vishal were talking to each other face to face at a crossing. If Vishal\'s shadow was exactly to the left of Udai, which direction was Udai facing?','East','West','North','South','third','2014','B.Tech','Basic Questions'),
 (105,'Y is in the East of X which is in the North of Z. If P is in the South of Z, then in which direction of Y, is P?','North','South','SouthEast','None of these','fourth','2014','B.Tech','Basic Questions'),
 (106,'If South-East becomes North, North-East becomes West and so on. What will West become?','NorthEast','NorthWest','SouthEast','SouthWest','third','2014','B.Tech','Basic Questions'),
 (107,'A man walks 5 km toward south and then turns to the right. After walking 3 km he turns to the left and walks 5 km. Now in which direction is he from the starting place?','West','South','NorthEast','SouthWest','fourth','2014','B.Tech','Basic Questions'),
 (108,'Rahul put his timepiece on the table in such a way that at 6 P.M. hour hand points to North. In which direction the minute hand will point at 9.15 P.M. ?','SouthEast','South','North','West','fourth','2014','B.Tech','Basic Questions'),
 (109,'Rasik walked 20 m towards north. Then he turned right and walks 30 m. Then he turns right and walks 35 m. Then he turns left and walks 15 m. Finally he turns left and walks 15 m. In which direction and how many metres is he from the starting position?','15 m West','30 m East','30 m West','45 m East','fourth','2014','B.Tech','Basic Questions'),
 (110,'Starting from the point X, Jayant walked 15 m towards west. He turned left and walked 20 m. He then turned left and walked 15 m. After this he turned to his right and walked 12 m. How far and in which directions is now Jayant from X?','32 m, South','47 m, East','42 m, North','27 m, South','first','2014','B.Tech','Basic Questions'),
 (111,'One evening before sunset Rekha and Hema were talking to each other face to face. If Hema\'s shadow was exactly to the right of Hema, which direction was Rekha facing?','North','South','East','None of these','second','2014','B.Tech','Basic Questions'),
 (112,'A boy rode his bicycle Northward, then turned left and rode 1 km and again turned left and rode 2 km. He found himself 1 km west of his starting point. How far did he ride northward initially?','1 km','2 km','3 km','5 km','second','2014','B.Tech','Basic Questions'),
 (113,'120, 99, 80, 63, 48, ?','35','38','39','40','first','2014','B.Tech','Basic Questions'),
 (114,'589654237, 89654237, 8965423, 965423, ?','58965','65423','8965','96542','fourth','2014','B.Tech','Basic Questions'),
 (115,'In the series 2, 6, 18, 54, ...... what will be the 8th term ?','4370','4374','7443','7434','second','2014','B.Tech','Basic Questions'),
 (116,'5,6,9, 15, ?, 40','21','25','27','33','second','2014','B.Tech','Basic Questions'),
 (117,'1, 3, 4, 8, 15, 27, ?','37','44','50','55','third','2014','B.Tech','Basic Questions'),
 (118,'3, 4, 7, 7, 13, 13, 21, 22, 31, 34, ?','42','43','51','52','second','2014','B.Tech','Basic Questions'),
 (119,'198, 194, 185, 169, ?','92','112','136','144','fourth','2014','B.Tech','Basic Questions'),
 (120,'Which term of the series 5, 10, 20, 40, ..... is 1280?','10th','9th','8th','None of these','second','2014','B.Tech','Basic Questions'),
 (121,'A train overtakes two persons who are walking in the same direction in which the train is going, at the rate of 2 kmph and 4 kmph and passes them completely in 9 and 10 seconds respectively. The length of the train is:','45 m','50 m','54 m','72 m','second','2014','B.Tech','Basic Questions'),
 (122,'Simple interest on a certain sum of money for 3 years at 8% per annum is half the compound interest on Rs. 4000 for 2 years at 10% per annum. The sum placed on simple interest is:','Rs. 1550','Rs. 1650','Rs. 1750','Rs. 2000','third','2014','B.Tech','Aptitude');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


--
-- Definition of table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `email_id` varchar(100) NOT NULL DEFAULT '',
  `marks_scored` int(10) unsigned NOT NULL DEFAULT '0',
  `max_marks` int(10) unsigned NOT NULL DEFAULT '0',
  `time_taken` varchar(10) NOT NULL,
  `status` enum('PASS','FAIL') NOT NULL,
  PRIMARY KEY (`email_id`),
  CONSTRAINT `F1` FOREIGN KEY (`email_id`) REFERENCES `student_details` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`email_id`,`marks_scored`,`max_marks`,`time_taken`,`status`) VALUES 
 ('lk@facebook.com',15,20,'00:23','PASS'),
 ('lk@gmail.com',16,20,'00:40','PASS'),
 ('lk@outlook.com',12,20,'00:49','FAIL'),
 ('lk@whatsapp.com',16,10,'00:42','PASS'),
 ('lk@yahoo.com',18,20,'00.59','PASS');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


--
-- Definition of table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_of_questions` int(10) unsigned NOT NULL DEFAULT '0',
  `time_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `cutoff` int(10) unsigned NOT NULL,
  `display_result` date NOT NULL,
  `question_selection` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`sno`,`no_of_questions`,`time_limit`,`cutoff`,`display_result`,`question_selection`) VALUES 
 (2,20,5,14,'2016-07-16','subject');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


--
-- Definition of table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
CREATE TABLE `student_details` (
  `reg_no` varchar(60) NOT NULL DEFAULT '0',
  `student_name` varchar(100) NOT NULL DEFAULT '',
  `father_name` varchar(100) NOT NULL DEFAULT '',
  `email_id` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `security` varchar(100) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `mobile_no` varchar(60) NOT NULL DEFAULT '',
  `degree` varchar(30) NOT NULL DEFAULT '',
  `semester` int(10) unsigned NOT NULL DEFAULT '0',
  `branch` varchar(100) NOT NULL DEFAULT '',
  `college` varchar(300) NOT NULL DEFAULT '',
  `aggregate` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `training_days` enum('30','45','60') NOT NULL,
  `skills` text NOT NULL,
  `city` varchar(60) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`email_id`,`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_details`
--

/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` (`reg_no`,`student_name`,`father_name`,`email_id`,`password`,`security`,`address`,`mobile_no`,`degree`,`semester`,`branch`,`college`,`aggregate`,`training_days`,`skills`,`city`,`state`,`date`,`time`) VALUES 
 ('ISRO-REGNO/0007','Anshul Thaiya','Pushpendra Thaiya','at@gmail.com','AKak@345','itsme','1A147\r\nVasant Vishar','9982633622','B.Sc',6,'Computer Engineering','SKIT',70.05,'45','JSP, Servlet','Jaipur','Rajasthan','2016-07-14','17:05:54'),
 ('ISRO-REGNO/0003','Rishabh Sogani','Khandelwal','lk@facebook.com','admin2','itsme','1-A-147,\r\nShiv Shakti Colony','9982633622','B.Tech',1,'Electrical Engineering','PIET',73.22,'60','Servlet','Bikaner','Rajasthan','2016-07-01','15:58:52'),
 ('ISRO-REGNO/0001','Lakshya Khandelwal','Ramji Lal Khandelwal','lk@gmail.com','admin','itsme','1-A-147,\r\nShiv shakti colony','9982633622','B.Tech',6,'Information Technology','PCE',73.22,'60','PHP','Jaipur','Rajasthan','2016-06-28','12:28:59'),
 ('ISRO-REGNO/0004','Jaishree Valecha','Khandelwal','lk@outlook.com','admin3','itsme','1-A-147,\r\nShiv Shakti Colony','9982633622','B.Tech',6,'Electrical & Electronics Engineering','PCE',88.32,'45','JSP','Ajmer','Rajasthan','2016-07-01','16:06:29'),
 ('ISRO-REGNO/0005','Lakshya','Khandelwal','lk@whatsapp.com','admin4','itsme','1-A-147,\r\nShiv Shakti Colony','9982633622','B.Tech',5,'Mechanical Engineering','PCE',73.22,'45','PHP','Delhi','Rajasthan','2016-07-01','16:11:05'),
 ('ISRO-REGNO/0002','Kriti Goyal','Khandelwal','lk@yahoo.com','admin1','itsme','1-A-147','87298372813','B.Tech',1,'Computer Engineering','JKBD',35.34,'30','KNDLKSN','Bikaner','Rajasthan','2016-06-28','13:31:59'),
 ('ISRO-REGNO/0008','Prince Gupta','Gopal Ram Gupta','pg@gmail.com','PGpg@345','itsme','1C147\r\nShastri Nagar','8107070706','B.Tech',7,'Electrical Engineering','JECRC',65.56,'60','Servlets','Jaipur','Rajasthan','2016-07-14','17:28:29'),
 ('ISRO-REGNO/0006','Rishabh Jain','Sudhendra','rishabh@gmail.com','jain','rishu','79,Sogani bhawan,Sanganer,Jaipur','7742269895','B.Tech',4,'Information Technology','PCE',69.00,'30','PHP','jaipur','Rajasthan','2016-07-13','12:14:27');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
