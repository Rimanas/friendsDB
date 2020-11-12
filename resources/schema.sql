CREATE TABLE users    -- первое создание и выполнение Ctrl+Enter , выравниание CTRL+Alt+Enter
(
    id    INTEGER PRIMARY KEY AUTOINCREMENT,
    name  TEXT    NOT NULL
);

CREATE TABLE friends
(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    user_one INTEGER REFERENCES users,
    user_two INTEGER REFERENCES users
);

CREATE  TABLE status
(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    status TEXT NOT NULL
);

CREATE TABLE messages
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    text TEXT NOT NULL ,
    sender INTEGER REFERENCES users,
    recipient INTEGER REFERENCES users,
    status INTEGER REFERENCES status
);

ALTER TABLE friends RENAME TO fr;
CREATE TABLE friends
(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    user_one INTEGER NOT NULL REFERENCES users,
    user_two INTEGER NOT NULL REFERENCES users
);

INSERT INTO friends(user_one, user_two)
SELECT user_one, user_two
FROM fr;

DROP TABLE fr;

ALTER TABLE messages RENAME TO ms;
CREATE TABLE messages
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    text TEXT NOT NULL ,
    sender INTEGER NOT NULL REFERENCES users,
    recipient INTEGER NOT NULL REFERENCES users,
    status INTEGER NOT NULL REFERENCES status
);
INSERT INTO messages(text, sender, recipient, status)
SELECT text, sender, recipient, status
FROM ms;
DROP TABLE ms;