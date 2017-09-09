delete from work_experiences
	where id = $1
returning *