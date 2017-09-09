with new_resume as (
	insert into resumes
		(id, user_id, linkedin_url, portfolio_url)
	values
		(
			default, 
			$1,
			$2,
			$3
		) 
			-- 'http://www.linkedin.com/in/christopher-wilson88', 'http://www.seewilsoncode.com')
	returning id
),
new_resume_exp as (
	insert into work_experiences
		(resume_id, title, company, from_date, to_date, description)
		select (select id from new_resume), * from json_to_recordset(
			$4
			) 
			as x("title" text, "company" text, "from_date" text, "to_date" text, "description" text)
)
new_resume_edu as (
	insert into education
		(resume_id, school, degree, study_field, from_date, to_date, description)
		select (select id from new_resume), * from json_to_recordset(
			$5
			)
			as y("school" text, "degree" text, "study_field" text, "from_date" text, "to_date" text, "description" text)
)
insert into skills
	(resume_id, name)
	select (select id from new_resume), x
	from unnest(ARRAY$6);
