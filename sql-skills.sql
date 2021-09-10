INSERT INTO artist (name)
VALUES ('Tony Hawk'), ('Peter Piper'), ('Tom Hardy');

SELECT * FROM artist
ORDER BY name
LIMIT 5;

/////////////////////////////////////////////////////

SELECT last_name, first_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT (*) FROM employee
WHERE city = 'Lethbridge';

/////////////////////////////////////////////////////

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(TOTAL) FROM invoice;

//////////////////////////////////////////////////////

SELECT * FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id;

SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
FROM invoice
JOIN customer
ON invoice.customer_id = customer.customer_id;

SELECT customer.first_name, customer.last_name, employee.first_name AS support_rep_first_name, employee.last_name 
AS support_rep_last_name
FROM customer
JOIN employee
ON customer.support_rep_id = employee.employee_id;

SELECT album.title, artist.name 
FROM album
JOIN artist
ON album.artist_id = artist.artist_id;


//////////////////////////////////////////////////////