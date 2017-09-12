insert into work_experiences
	(title, company, from_date, to_date, description, resume_id)
values
	($2, $3, $4, $5, $6, $1)
returning id