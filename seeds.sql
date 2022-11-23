INSERT INTO department (name)
VALUES 
    ("Artist"),
    ("Engineering"),
    ("Finance"),
    ("HR"),
    ("Legal"),
    ("Sales"),
    ("Execs");

INSERT INTO role (title, salary, department_id)
VALUES 
    ("CEO", "100000", "7"),
    ("Software Engineer", "95000", "2"),
    ("Something in finance", "90000", "3"),
    ("HR specialist", "90000", "4"),
    ("Lawyer", "95000", "5")
    ("Sales Rep", "75000", "6");

INSERT INTO employee (first_name, last_name, role_id, manager_id)