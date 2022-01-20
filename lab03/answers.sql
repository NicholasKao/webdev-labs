-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;


-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26;


-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id IN (26,12);



-- Exercise 6
SELECT COUNT(*)
FROM posts;



-- Exercise 7
SELECT user_id, COUNT(*) as count
FROM comments
GROUP BY user_id
ORDER BY COUNT(*) DESC;



-- Exercise 8
SELECT p.id as id, p.image_url as image_url, p.user_id as user_id, u.username as username, u.first_name as first_name, u.last_name as last_name
FROM posts p
LEFT JOIN users u ON p.user_id = u.id
WHERE p.user_id IN (26,12);



-- Exercise 9
SELECT p.id as id, p.pub_date as pub_date, f.following_id as following_id
FROM following f
LEFT JOIN posts p ON f.following_id = p.user_id
WHERE f.user_id = 26



-- Exercise 10
SELECT p.id as id, p.pub_date as pub_date, f.following_id as following_id, u.username as username
FROM following f
LEFT JOIN posts p ON f.following_id = p.user_id
LEFT JOIN users u ON p.user_id = u.id
WHERE f.user_id = 26
ORDER BY p.pub_date DESC



-- Exercise 11
INSERT INTO bookmarks(user_id, post_id)
VALUES (26,219);
INSERT INTO bookmarks(user_id, post_id)
VALUES (26,220);
INSERT INTO bookmarks(user_id, post_id)
VALUES (26,221);



-- Exercise 12
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 219;
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 220;
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 221;



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26;



-- Exercise 14
SELECT p.id as id, p.user_id as user_id, count(c.text) as count, p.caption as caption
FROM posts p
LEFT JOIN comments c ON p.id = c.post_id
WHERE p.user_id=26
GROUP BY p.id, p.user_id, p.caption
ORDER BY count(c.text) desc;
