
CREATE TABLE department (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30)
);



CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);



CREATE TABLE employee (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);


INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Engineering');
INSERT INTO department (name) VALUES ('Human Resources');


INSERT INTO role (title, salary, department_id) VALUES ('Sales Associate', 50000, 1);
INSERT INTO role (title, salary, department_id) VALUES ('Software Engineer', 80000, 2);
INSERT INTO role (title, salary, department_id) VALUES ('HR Specialist', 60000, 3);


INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Kat', 'Lomidze', 1, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Marine', 'Esikova', 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Ana', 'Nergadze', 3, NULL);

