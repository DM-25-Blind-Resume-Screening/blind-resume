select c.name, jp.id, jp.title, u.first_name, u.last_name, r.* from submitted_resumes sr
join resumes r on sr.resume_id = r.id
join users u on u.id = r.user_id
join job_postings jp on sr.job_post_id = jp.id
join companies c on c.id = jp.company_id
where jp.id = $1;