USE MaldivesVsLakshadweep;

SELECT * FROM Destination;       
SELECT * FROM TouristAttractions;
SELECT * FROM TouristArrivals;
SELECT * FROM IndianTourists;

-- 1)Retrieve the number of visitors to the Maldives in 2019?
SELECT NumberofVisitors
FROM TouristArrivals
WHERE DestinationID = 1 AND Year = 2019;

-- 2)Retrieve the average budget per day and best time to visit for destinations with more than 10,000 tourists in 2022?
SELECT Name, AverageBudgetPerDay, BestTimeToVisit
FROM Destination
WHERE DestinationID IN (
    SELECT DestinationID
    FROM TouristArrivals
    WHERE Year = 2022 AND NumberofVisitors > 10000
);

-- 3)Retrieve the unique features of tourist attractions in Lakshadweep?
SELECT UniqueFeatures
FROM Destination
WHERE DestinationID = 2;

-- 4)Retrieve the number of Indian tourists who visited the Maldives in 2021?
SELECT NumberofTourists
FROM IndianTourists
WHERE DestinationID = 1 AND Year = 2021;

-- 5)Find the destinations with the highest tourism revenue in 2022?
SELECT Name
FROM Destination
WHERE TourismRevenue = (
    SELECT MAX(TourismRevenue)
    FROM Destination
    WHERE TourismRevenue IS NOT NULL
);


