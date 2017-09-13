update submitted_resumes
	set shortlist = true
where  job_post_id = $1 and resume_id = $2