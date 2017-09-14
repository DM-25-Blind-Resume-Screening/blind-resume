with new_job_post as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(default, $1, $2, $3, $4,$9, $5, current_date)
	returning id
),
new_post_responsibilities as (
	insert into responsibilities
		(job_post_id, resp_text)
	select (select id from new_job_post), x
	from unnest($6::text[]) as x
),
new_post_qualifications as (
	insert into qualifications 
		(job_post_id, qual_text)
	select (select id from new_job_post), y
	from unnest($7::text[]) as y
)
insert into keywords 
	(job_post_id, name)
select (select id from new_job_post), z
from unnest($8::text[]) as z;