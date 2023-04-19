-- Customer Table Cleaning 
SELECT 
  c.CustomerKey AS CustomerKey, 
  c.FirstName AS [First Name], 
  c.LastName AS [Last Name], 
  CONCAT(c.FirstName, ' ', c.LastName) AS [Full Name], 
  -- Joined the First and last name through Concatenate
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  -- Used Case to return the Male and Female for M and F and used END AS to name the column
  c.DateFirstPurchase, 
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered List by Customer Key
