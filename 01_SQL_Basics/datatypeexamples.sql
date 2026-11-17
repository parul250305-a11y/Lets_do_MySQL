CREATE TABLE all_mysql_datatypes (
    -- 1. NUMERIC TYPES
    id_tiny TINYINT,                          -- Very small integer (-128 to 127)
    id_small SMALLINT,                        -- Small integer (-32,768 to 32,767)
    id_medium MEDIUMINT,                      -- Medium integer (-8,388,608 to 8,388,607)
    id_int INT AUTO_INCREMENT PRIMARY KEY,    -- Standard integer (up to ~2.14 billion)
    id_big BIGINT,                            -- Large integer (up to ~9 quintillion)
    price DECIMAL(10, 2),                     -- Exact fixed-point number (10 digits total, 2 after decimal)
    rating FLOAT,                             -- Approximate single-precision floating-point number
    precise_measurement DOUBLE,               -- Approximate double-precision floating-point number
    is_active BOOLEAN,                        -- Alias for TINYINT(1) (0 = FALSE, 1 = TRUE)
    flag_bit BIT(4),                          -- Bit-field value (1 to 64 bits)

    -- 2. STRING & TEXT TYPES
    country_code CHAR(2),                     -- Fixed-length string (0 to 255 characters)
    username VARCHAR(50) NOT NULL,            -- Variable-length string (0 to 65,535 characters)
    tiny_note TINYTEXT,                       -- Short text string (max 255 bytes)
    bio TEXT,                                 -- Standard text string (max 65,535 bytes)
    article_body MEDIUMTEXT,                  -- Medium text string (max 16 MB)
    book_content LONGTEXT,                    -- Large text string (max 4 GB)

    -- 3. BINARY TYPES
    fixed_hash BINARY(16),                    -- Fixed-length binary byte string
    dynamic_token VARBINARY(255),             -- Variable-length binary byte string
    tiny_file TINYBLOB,                       -- Binary Large Object (max 255 bytes)
    profile_pic BLOB,                         -- Standard BLOB (max 65,535 bytes)
    video_clip MEDIUMBLOB,                    -- Medium BLOB (max 16 MB)
    system_backup LONGBLOB,                   -- Large BLOB (max 4 GB)

    -- 4. DATE & TIME TYPES
    birth_date DATE,                          -- Date format: 'YYYY-MM-DD'
    shift_start TIME,                         -- Time format: 'HH:MM:SS'
    graduation_year YEAR,                     -- 4-digit year format: 'YYYY'
    created_at DATETIME,                      -- Date and time: 'YYYY-MM-DD HH:MM:SS' (no timezone conversion)
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- UTC-based timestamp

    -- 5. SPECIAL & SPATIAL TYPES
    account_status ENUM('active', 'pending', 'suspended'), -- Single choice from a predefined list
    permissions SET('read', 'write', 'delete', 'admin'),   -- Multiple choices from a predefined list
    user_preferences JSON,                    -- Native JSON document storage
    office_location POINT,                    -- Single X/Y coordinate (Spatial)
    delivery_route LINESTRING,                -- Series of points forming a line (Spatial)
    service_area POLYGON                      -- Closed shape representing an area (Spatial)
);
