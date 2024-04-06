DROP TABLE money;
-- Method 01 Bad Practice
CREATE TABLE money (
    id INT AUTO_INCREMENT PRIMARY KEY,
    money_1 DOUBLE,
    money_2 DOUBLE
);


insert into money (money_1,money_2)
VALUES (100.4,20.4),
			(-80.0,0.0);
			
SELECT * FROM money;


SELECT SUM(money_1),SUM(money_2) FROM money;
SELECT SUM(money_1) = SUM(money_2) FROM money; --nothing output here


--Method 2 using decimal
CREATE TABLE money_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    money_1 DECIMAL(10,2), --10  digits and 2 decimal places
    money_2 DECIMAL(10,2)
);

insert into money_2 (money_1,money_2)
VALUES (100.4,20.4),
			(-80.0,0.0);
			
SELECT * FROM money;


SELECT SUM(money_1) = SUM(money_2) FROM money_2;


--Method 3 using integer
CREATE TABLE money_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    money_1 DECIMAL(10,2),
    money_2 DECIMAL(10,2)
);

insert into money_2 (money_1,money_2)
VALUES (100.4 * 100,20.4 * 100), --this is how stripe do always multiply by 100
			(-80.0 * 100,0.0 * 100);
			
SELECT * FROM money;


SELECT SUM(money_1) = SUM(money_2) FROM money_2;