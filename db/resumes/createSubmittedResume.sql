insert into submitted_resumes
	(job_post_id, resume_id)
values
	($1, (select id from resumes where user_id = $2))