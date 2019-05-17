insert into user_table (id, active, password, username) values (1, true, '$2a$08$idS3pAz2Ur1DeiOR6uPscubgQsM/v1xUuUql8CjifLwc/mWvUAMk.', 'admin');

insert into user_role (user_id, roles) values (1, 'USER'), (1, 'ADMIN');