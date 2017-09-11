insert into education
	(school, degree, study_field, from_date, to_date, description, resume_id)
values
	($2, $3, $4, $5, $6, $7, $1)
returning *;