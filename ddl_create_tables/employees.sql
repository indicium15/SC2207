create table dbo.employees
(
    eid    varchar(50)  not null
        primary key,
    name   varchar(100) not null,
    salary int          not null
)
go

INSERT INTO a54g3.dbo.employees (eid, name, salary) VALUES (N'EMPLOYEE1', N'Marc', 1050);
INSERT INTO a54g3.dbo.employees (eid, name, salary) VALUES (N'EMPLOYEE2', N'Jeff', 2210);
