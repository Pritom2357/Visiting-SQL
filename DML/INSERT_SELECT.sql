-- Insert data from 'customers' into 'persons'

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM persons
