use rides_demo;
select * from rides;
-- Find the latest ride_id (or use the one you just inserted)

SELECT ride_id, rider_name, status FROM rides ORDER BY ride_id DESC LIMIT 1;

-- Replace <RID> with the actual id:
CALL match_ride(1);

-- Verify results
SELECT * FROM assignments ORDER BY assignment_id DESC LIMIT 5;
SELECT ride_id, status FROM rides WHERE ride_id = 1;
SELECT driver_id, name, is_available FROM drivers;
