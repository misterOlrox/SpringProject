insert into user_table (id, active, password, username) values (1, true, 'admin', 'admin');

insert into user_role (user_id, roles) values (1, 'USER'), (1, 'ADMIN');