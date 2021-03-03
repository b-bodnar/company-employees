-- create DB
CREATE SCHEMA `company_employee`;

-- create table Regions
create table regions
(
    id   bigserial
        constraint region_pk
            primary key,
    name varchar not null
);

-- create table Companies
create table companies
(
    id                bigserial
        constraint company_pk
            primary key,
    name              varchar not null,
    address           varchar,
    phone             varchar,
    region_id         bigserial
        constraint region___fk
            references region,
    country           varchar,
    city              varchar,
    is_active         boolean,
    business_area     varchar,
    count_of_office   int,
    count_of_employee int
);

-- create table Employees
create table employees
(
    id                         bigserial
        constraint employee_pk
            primary key,
    first_name                 varchar,
    last_name                  varchar,
    position                   varchar,
    is_married                 boolean,
    number_of_years_in_company int,
    company_id                 bigserial not null
        constraint company___fk
            references company
);

