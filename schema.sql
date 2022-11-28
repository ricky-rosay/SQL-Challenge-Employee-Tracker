DROP DATABASE IF EXISTS employee_db;
CREATE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES ("Artist"), ("Engineering"), ("Finance"), ("HR"), ("Legal"), ("Sales"), ("Execs");

INSERT INTO role (title, salary, department_id)
VALUES ("CEO", "100000", "7"), ("Software Engineer", "95000", "2"), ("Finance specialist", "90000", "3"), ("HR specialist", "90000", "4"), ("Lawyer", "95000", "5"), ("Sales Rep", "75000", "6"), ("Graphic designer", "70000", "1");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- make sure to check and apply the role id and the manager id --
VALUES ("Luis", "Romero"), ("Maron", "Weldai"), ("Cody", "Pham"), ("Sierra", "Hamlin"), ("Carey", "White"), ("Robert", "Dominguez"), ("Dallas", "Jimenez");

-- adding all the perameters to the schema file rather than the seeds file --

-- thia ia for viewing it all --
SELECT e.id, e.first_name, e.last_name, d.name AS department, r.title, r.salary, CONCAT_WS(" ", m.first_name, m.last_name) AS manager FROM employee e LEFT JOIN employee m ON m.id = e.manager_id INNER JOIN role r ON e.role_id = r.id INNER JOIN department d ON r.department_id = d.id ORDER BY e.id ASC;
-- this is to view all roles --
SELECT  r.id, r.title, r.salary, d.name as Department_Name FROM role AS r INNER JOIN department AS d ON r.department_id = d.id;
-- this is to view employees --
SELECT id, CONCAT_WS(' ', first_name, last_name) AS Employee_Name FROM employee;
-- this is to update --
UPDATE employee SET role_id = 3 WHERE id = 8;
UPDATE employee SET ? WHERE ?;
-- this is to delete --
DELETE FROM department WHERE id = 13;




