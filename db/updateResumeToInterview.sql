update submitted_resumes
	set interview_candidate = true
where job_post_id = $1 and resume_id = $2