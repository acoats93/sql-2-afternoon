-- Answers
-- Problem #1

SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

-- Problem 2

SELECT c.first_name, c.last_name, i.invoice_date, i.total 
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id

-- Problem 3

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- Problem 4

SELECT a.title, ar.name FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id;

-- Problem 5

SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- Problem 6

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5

-- Problem 7

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- Problem 8

SELECT t.name, a.title FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';