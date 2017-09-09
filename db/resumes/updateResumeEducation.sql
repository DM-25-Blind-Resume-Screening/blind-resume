update 
	education
set
	school = $2,
	degree = $3, 
	study_field = $4,
	from_date = $5,
	to_date = $6,
	description = $7
where id = $1
returning *;