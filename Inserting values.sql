-- make sure we’re on the correct schema
USE rides_demo;

-- allow truncating parent tables safely (we’ll re-enable after)
SET FOREIGN_KEY_CHECKS = 0;

-- truncate in child→parent order to avoid FK issues
TRUNCATE TABLE driver_locks;      -- depends on drivers (and optionally rides)
TRUNCATE TABLE assignments;       -- depends on rides + drivers
TRUNCATE TABLE rides;             -- parent
TRUNCATE TABLE drivers;           -- parent

SET FOREIGN_KEY_CHECKS = 1;

-- seed ONE clean set of drivers
INSERT INTO drivers (name, lat, lon) VALUES
('Alice', 12.9716, 77.5946),
('Bob',   12.9750, 77.5900),
('Cara',  12.9650, 77.6000);

-- optional: add a fresh ride (5 km default radius)
INSERT INTO rides (rider_name, pickup_lat, pickup_lon)
VALUES ('Riya', 12.9718, 77.5930);

-- verify
SELECT * FROM drivers;
SELECT * FROM rides ORDER BY ride_id DESC LIMIT 5;
