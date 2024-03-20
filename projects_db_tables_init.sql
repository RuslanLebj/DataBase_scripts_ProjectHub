CREATE TABLE discipline
(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE project
(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    annotation VARCHAR,
    upload_date DATE,
    link VARCHAR,
    discipline_id INT,
    FOREIGN KEY(discipline_id) REFERENCES discipline(id)
);

CREATE TABLE student
(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE supervisor
(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE project_student
(
    project_id INT,
    student_id INT,
    PRIMARY KEY(project_id, student_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(student_id) REFERENCES student(id)
);

CREATE TABLE project_supervisor
(
    project_id INT,
    supervisor_id INT,
    PRIMARY KEY(project_id, supervisor_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(supervisor_id) REFERENCES supervisor(id)
);

CREATE TABLE keyword
(
    id SERIAL PRIMARY KEY,
    text VARCHAR
);

CREATE TABLE project_keyword
(
    project_id INT,
    keyword_id INT,
    PRIMARY KEY(project_id, keyword_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(keyword_id) REFERENCES keyword(id)
);

CREATE TABLE task
(
    id SERIAL PRIMARY KEY,
    text VARCHAR
);

CREATE TABLE project_task
(
    project_id INT,
    task_id INT,
    PRIMARY KEY(project_id, task_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(task_id) REFERENCES task(id)
);

CREATE TABLE technology
(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE project_technology
(
    project_id INT,
    technology_id INT,
    PRIMARY KEY(project_id, technology_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(technology_id) REFERENCES technology(id)
);
