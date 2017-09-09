update 
	work_experiences
set
	title = $2,
	company = $3,
	from_date = $4,
	to_date = $5,
	description = $6
where id = $1 