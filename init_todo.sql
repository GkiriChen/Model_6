-- Table: users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Table: tasks
DROP TABLE IF EXISTS tasks;
CREATE TABLE tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES users (id)
    ON DELETE CASCADE
);

-- Table: groups_users
DROP TABLE IF EXISTS groups_users;
CREATE TABLE groups_users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_us INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL        
);

-- Table: teacher
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Table: disciplines
DROP TABLE IF EXISTS disciplines;
CREATE TABLE disciplines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    discipline VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

-- Table: grades
DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    discipline VARCHAR(255) NOT NULL,
    rating INTEGER NOT NULL,
    date_gr DATE NOT NULL
);