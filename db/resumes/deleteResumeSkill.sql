delete from skills
where id = $1
returning * 