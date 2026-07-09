-- Run this script in your PostgreSQL database before using the app.

-- 1. Table used by the stored procedure
CREATE TABLE IF NOT EXISTS tb_customer (
    id           SERIAL PRIMARY KEY,
    fullname     VARCHAR(100) NOT NULL,
    phone        VARCHAR(100),
    email        VARCHAR(100),
    address      VARCHAR(100),
    city         VARCHAR(100),
    datecreated  DATE DEFAULT CURRENT_DATE
);

-- 2. Stored procedure (as provided)
CREATE OR REPLACE PROCEDURE proc_insertcustomer(
    p_fullname VARCHAR(100),
    p_phone VARCHAR(100),
    p_email VARCHAR(100),
    p_address VARCHAR(100),
    p_city VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO tb_customer (
        fullname,
        phone,
        email,
        address,
        city
    )
    VALUES (
        p_fullname,
        p_phone,
        p_email,
        p_address,
        p_city
       
    );
END;
$$;
