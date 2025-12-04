create database if not exists edu_games;
use edu_games;

create table salary (
  salary_id int not null auto_increment,
  amount varchar(45) not null,
  primary key (salary_id)
);

create table customer_account (
  customer_account_id int not null auto_increment,
  username varchar(50) not null unique,
  email varchar(100) not null unique,
  reg_date date not null,
  password_hash varchar(255) not null,
  primary key (customer_account_id)
);

create table department (
  department_id int not null auto_increment,
  name varchar(45) not null,
  head int not null,
  primary key (department_id)
);

create table employee (
  employee_id int not null auto_increment,
  name varchar(45) default null,
  firstname varchar(45) default null,
  department int not null,
  primary key (employee_id),
  foreign key (department) references department (department_id)
);

create table project (
  project_id int not null auto_increment,
  name varchar(45) default null,
  project_head int not null,
  primary key (project_id),
  foreign key (project_head) references employee (employee_id)
);

create table assignment (
  assignment_id int not null auto_increment,
  name varchar(45) default null,
  project_id int not null,
  priority int default null,
  status int default null,
  primary key (assignment_id),
  foreign key (project_id) references project (project_id)
);

create table game (
  game_id int not null auto_increment,
  title varchar(100) not null,
  release_date date default null,
  project_id int not null,
  primary key (game_id),
  foreign key (project_id) references project (project_id)
);

create table review (
  review_id int not null auto_increment,
  rating tinyint not null,
  text text default null,
  date date not null,
  game_id int not null,
  customer_account_id int not null,
  primary key (review_id),
  unique key uk_customer_game_review (customer_account_id, game_id),
  foreign key (game_id) references game (game_id),
  foreign key (customer_account_id) references customer_account (customer_account_id)
);

create table employee_salary (
  employee_id int not null,
  salary_id int not null,
  percentage float default null,
  valid_date date default null,
  primary key (employee_id, salary_id),
  foreign key (employee_id) references employee (employee_id),
  foreign key (salary_id) references salary (salary_id)
);

create table employee_assignment (
  employee_id int not null,
  assignment_id int not null,
  date date default null,
  time float default null,
  primary key (employee_id, assignment_id),
  foreign key (employee_id) references employee (employee_id),
  foreign key (assignment_id) references assignment (assignment_id)
);

create table employee_game (
  employee_id int not null,
  game_id int not null,
  role varchar(50) default null,
  start_date date not null,
  end_date date default null,
  primary key (employee_id, game_id),
  foreign key (employee_id) references employee (employee_id),
  foreign key (game_id) references game (game_id)
);

create table customer_game (
  customer_account_id int not null,
  game_id int not null,
  purchase_date date not null,
  price_paid decimal(10, 2) default 0.00,
  primary key (customer_account_id, game_id),
  foreign key (customer_account_id) references customer_account (customer_account_id),
  foreign key (game_id) references game (game_id)
);

alter table department
  add constraint fk_department_head foreign key (head) references employee (employee_id);