USE EntertainmentAgencyExample;
--HW: Aggregates, GROUP BY, and Having
--HELP: 2, 5, 7, 8

-- ***************************************************************************
--1. Find the number of engagements in 2017 (1 column, 1 row, value: 56)
-- ***************************************************************************

--SELECT COUNT(EngagementNumber) as NumOfEngagements FROM Engagements
--WHERE EndDate BETWEEN '2017-01-01' AND '2017-12-31'

-- ***************************************************************************
--2. Find the number of entertainers who had an engagement in 2017. (1 column, 1 row, value: 12)
--HELP
-- ***************************************************************************

--SELECT COUNT(*) as NumberOfEngagements, EntertainerID FROM Engagements
--WHERE EndDate BETWEEN '2017-01-01' AND '2017-12-31'
--GROUP BY EntertainerID
--ORDER BY NumberOfEngagements, EntertainerID

--SELECT COUNT(EntertainerID) FROM Engagements
--WHERE EndDate BETWEEN '2017-01-01' AND '2017-12-31' 
--GROUP BY EntertainerID
--HAVING EntertainerID = ''
--ORDER BY EntertainerID

--SELECT
--WHERE
--GROUP BY 
--HAVING
--ORDER BY

-- ***************************************************************************
--3. Find the highest contract price for an engagement in 2017. (1 column, 1 row, value: 3,800)
-- ***************************************************************************

--SELECT MAX(ContractPrice) as HightestContractPrice FROM Engagements
--WHERE EndDate BETWEEN '2017-01-01' AND '2017-12-31'

-- ***************************************************************************
--4. Find the lowest contract price for an engagement in 2017. (1 column, 1 row, value: 140)
-- ***************************************************************************

--SELECT MIN(ContractPrice) as LowestContractPrice FROM Engagements
--WHERE EndDate BETWEEN '2017-01-01' AND '2017-12-31'

-- ***************************************************************************
--5. Find the total amount of money made by 'Jazz Persuasion' in 2018. (1 column, 1 row, value: 2,040)
-- HELP
-- ***************************************************************************
--SELECT * FROM Entertainers

--SELECT SUM(ContractPrice) AS TotaMoneyMade FROM Engagements
--WHERE EndDate BETWEEN '2018-01-01' AND '2018-12-31'


--SELECT * FROM Engagements

-- ***************************************************************************
--6. Find the number of members that represent each gender. (2 columns, 3 rows)
-- ***************************************************************************

--SELECT COUNT(Gender) as Gender, COUNT(MemberID) as NumberOfMembers FROM Members
--GROUP BY Gender

-- ***************************************************************************
--7. Find the average amount of money made by each entertainer in 2017. Sort from most to least. (2 columns, 12 rows)
--HELP
-- ***************************************************************************

--SELECT EntertainerID, AVG(ContractPrice) as AvgContractPrice FROM Engagements
--GROUP BY EntertainerID
--ORDER BY EntertainerID, AvgContractPrice DESC


-- ***************************************************************************
--8. Find the EntertainerID with the lowest average amount of money made from all entertainers. (1 column, 1 row. EntertainerID = 1004). 
--HELP
-- ***************************************************************************
--SELECT * FROM Engagements

--SELECT EntertainerID, MIN(ContractPrice) as MinAvgContractPrice FROM Engagements
--GROUP BY EntertainerID
--ORDER BY MinAvgContractPrice

--SELECT EntertainerID, AVG(ContractPrice) FROM Engagements
--GROUP BY EntertainerID
--HAVING AVG(ContractPrice) < 1000

--SELECT * FROM Engagements
--INNER JOIN Entertainers ON Engagements.EntertainerID = Entertainers.EntertainerID;

--SELECT Engagements.EntertainerID, Entertainers.EntStageName , AVG(ContractPrice) AS AveragePrice FROM Engagements
--INNER JOIN Entertainers ON Entertainers.EntertainerID = Engagements.entertainerID
--GROUP BY Engagements.EntertainerID, EntStageName
--HAVING AVG(ContractPrice) < 1000
--ORDER BY AVG(ContractPrice) ASC

-- ***************************************************************************
--9. Find all states where the average salary for an agent is greater than $10,000. (2 columns, 1 row)
-- ***************************************************************************

--SELECT AgtState, AVG(Salary) as AvgSalary  FROM Agents
--GROUP BY AgtState
--HAVING AVG(Salary) > 10000
