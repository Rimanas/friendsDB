INSERT INTO users (id, name) VALUES
(1, 'Lee Jong Suk'),
(2, 'Park Seo Joon'),
(3, 'Park Shin Hye'),
(4, 'Bae Suzy'),
(5, 'IU');

INSERT INTO status (id, status) VALUES
(1, 'sent'),
(2, 'read'),
(3, 'unread');

INSERT INTO friends (id, user_one, user_two) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4);

INSERT INTO messages (id, text, sender, recipient, status) VALUES
(1, 'Hello. How are you?', 1, 2, 2),
(2, 'What are you doing??', 1, 2, 2),
(3, 'I am doing my java homework.', 2, 1, 2),
(4, 'Did you do your sixth homework?', 2, 1, 2),
(5, 'Yes I did', 1, 2, 2),
(6, 'Help me.', 2, 1, 3),

(7, 'Hello, lets go to the movies?', 1, 4, 2),
(8, 'No. I am busy today. I am sorry.', 4, 1, 2),
(9, 'It is a pity', 1, 4, 1),
(10, 'Where are you?', 3, 1, 1)
