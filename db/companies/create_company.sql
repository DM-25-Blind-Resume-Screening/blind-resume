insert into companies
( name, email, picture, auth_id, user_name)
values
($1, $2, $3, $4, $5)
returning *;
