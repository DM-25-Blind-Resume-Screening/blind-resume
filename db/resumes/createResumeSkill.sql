insert into skills
	(name, resume_id)
values
	($2, $1)
returning name;