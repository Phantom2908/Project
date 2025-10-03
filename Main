-- Drop existing tables (if they exist)
DROP TABLE IF EXISTS `drivers`;
DROP TABLE IF EXISTS `rides`;

-- Create table: drivers
CREATE TABLE `drivers` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `status` VARCHAR(50) NOT NULL,         -- e.g., 'available', 'busy'
  `latitude` DECIMAL(10,7) NOT NULL,     -- precise latitude
  `longitude` DECIMAL(10,7) NOT NULL,    -- precise longitude
  `last_reported_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create table: rides
CREATE TABLE `rides` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `rider_lat` DECIMAL(10,7) NOT NULL,    -- rider's latitude
  `rider_lng` DECIMAL(10,7) NOT NULL,    -- rider's longitude
  `status` VARCHAR(50) NOT NULL,         -- e.g., 'requested', 'assigned', 'completed'
  `driver_id` INT,                       -- foreign key to drivers
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  CONSTRAINT `fk_driver`
    FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE
);
