delete from education
	where id = $1
returning *