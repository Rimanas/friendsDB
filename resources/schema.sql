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
)
