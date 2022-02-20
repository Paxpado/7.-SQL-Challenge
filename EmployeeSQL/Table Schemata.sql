CREATE TABLE Departments (
    Dept_No VARCHAR(255)   NOT NULL,
    Dept_Name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Department_Employee (
    Emp_No INT   NOT NULL,
    Dept_No VARCHAR(255)   NOT NULL
);

CREATE TABLE Department_Manager (
    Dept_No VARCHAR(255)   NOT NULL,
    Emp_No INT   NOT NULL
);

CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Emp_Title_ID VARCHAR(255)   NOT NULL,
    Birth_Date DATE   NOT NULL,
    First_Name VARCHAR(255)   NOT NULL,
    Last_Name VARCHAR(255)   NOT NULL,
    Sex VARCHAR(255)   NOT NULL,
    Hire_Date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Salaries (
    Emp_No INT   NOT NULL,
    Salary INT   NOT NULL
);

CREATE TABLE Titles (
    Title_ID VARCHAR(255)   NOT NULL,
    Title VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_ID
     )
);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_Title_ID FOREIGN KEY(Emp_Title_ID)
REFERENCES Titles (Title_ID);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

