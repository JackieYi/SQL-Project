--View the data we need
SELECT entity,
year,
average_annual_working_hours_per_worker
FROM Hours

-- Renaming the column average_annual_working_hours_per_worker to Working_hours
ALTER TABLE Hours
RENAME COLUMN average_annual_working_hours_per_worker TO working_hours;

--Check the unique years
SELECT DISTINCT(year)
FROM  Hours
ORDER BY Year
--The year before 1950 are not countinuous, so I would like to delete them.

--Delete the data with a year less than 1950
DELETE  FROM Hours
WHERE year <1950

--Check if any Working_hours value is less than 0
SELECT Working_hours
from Hours
WHERE Working_hours<0

SELECT entity,
Working_hours
FROM Hours
GROUP by entity
order by Working_hours DESC

SELECT entity,
Working_hours,
year
FROM Hours
WHERE Hours.Year = (
SELECT MAX(year)
from Hours
)

SELECT entity,
Working_hours
FROM Hours
WHERE Hours.Year = (
SELECT MAX(year)
from Hours
)

SELECT entity,year,Working_hours
FROM Hours
WHERE entity like "%States"
ORDER BY 3
LIMIT 1

SELECT year,
Working_hours
FROM Hours
GROUP BY year
order by Year DESC



