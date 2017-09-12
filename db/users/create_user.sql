insert into users
(id, first_name, last_name, email, picture, auth_id, user_name)
values
(default, $1, $2, $3, $4, $5, $6)
returning *
