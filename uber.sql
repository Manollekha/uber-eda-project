#Table

CREATE TABLE "uber_cleaned_data" (
	"Request id"	INTEGER,
	"Pickup point"	TEXT,
	"Driver id"	INTEGER,
	"Status"	TEXT,
	"Request timestamp"	TEXT,
	"Drop timestamp"	TEXT,
	"Request Hour"	INTEGER,
	"Time Slot"	TEXT,
	"Trip Type"	TEXT
)


#Query 1: Total Requests per Hour

Shows how many ride requests were made during each hour of the day (0–23).
This helps identify peak demand hours.

SELECT
    "Request Hour" AS request_hour,
    COUNT(*) AS total_requests
FROM uber_cleaned_data
GROUP BY "Request Hour"
ORDER BY "Request Hour";

Query 2: Cancelled Rides by Pickup Point

Compares how many rides were cancelled at the City vs the Airport.
Helps identify which location faces more cancellations.

SELECT
    "Pickup point" AS pickup_point,
    COUNT(*) AS cancelled_rides
FROM uber_cleaned_data
WHERE Status = 'Cancelled'
GROUP BY "Pickup point";

Query 3: Completed vs Cancelled Rides per Hour

Compares the number of Completed and Cancelled rides during each hour of the day.
Reveals problematic time slots with more cancellations.

SELECT
    "Request Hour" AS request_hour,
    Status,
    COUNT(*) AS trip_count
FROM uber_cleaned_data
WHERE Status IN ('Trip Completed', 'Cancelled')
GROUP BY "Request Hour", Status
ORDER BY "Request Hour";






