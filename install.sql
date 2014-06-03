-- front-end tables
CREATE TABLE checks (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(64) NOT NULL, type VARCHAR(32) NOT NULL, data VARCHAR(512) NOT NULL, fail_count INT NOT NULL DEFAULT 3, success_count INT NOT NULL DEFAULT 2, status ENUM ('online', 'offline') DEFAULT 'online', last_alert TIMESTAMP DEFAULT CURRENT_TIMESTAMP, turn_count INT NOT NULL DEFAULT 0);
CREATE TABLE contacts (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, type VARCHAR(32) NOT NULL, data VARCHAR(512));
CREATE TABLE alerts (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, check_id INT NOT NULL, contact_id INT NOT NULL);

-- data tables
CREATE TABLE check_results (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, check_id INT NOT NULL, result ENUM ('success', 'fail'), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
