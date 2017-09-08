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
			-- '[
			-- 	{"title": "Web Developer", "company": "Adobe", "from_date": "6/2017", "to_date": "present", "description": "Worked on adding features to photoshop and illustrator.  Collaborate with other professionals"},
			-- 	{"title": "School Psychologist", "company": "Putnam County School Board", "from_date": "8/2015", "to_date": "present", "description": "Small group and individual counseling.  Psychoeducational assessment"},
			-- 	{"title": "Sales Associate", "company": "Best Buy", "from_date": "11/2008", "to_date": "8/2012", "description": "Sell stuff, hate life"}
			-- ]'
			$4
			) 
			as x("title" text, "company" text, "from_date" text, "to_date" text, "description" text)
)
-- new_resume_edu as (
	insert into education
		(resume_id, school, degree, study_field, from_date, to_date, description)
		select (select id from new_resume), * from json_to_recordset(
			-- '[
			-- 	{"school": "University of Florida", "degree": "Education Specialist(Ed.S.)", "study_field": "School Psychology", "from_date": "8/2012", "to_date": "5/2015", "description": "Graduate studies"},
			-- 	{"school": "NASA Clown College", "degree": "Doctor of Philosophy (Ph.D.)", "study_field": "Clown Aerodynamics", "from_date": "8/2008", "to_date": "5/2011", "description": "Space Clown School"},
			-- 	{"school": "DevMountain", "degree": "Full Stack Developer", "study_field": "Web Development", "from_date": "8/2012", "to_date": "5/2015", "description": "Coding Bootcamp"}

			-- ]'
			$5
			)
			as y("school" text, "degree" text, "study_field" text, "from_date" text, "to_date" text, "description" text)
-- )
-- returning * from new_resume;
-- insert into skills
-- 	(resume_id, name)
-- 	select (select id from new_resume), x
-- 	from unnest(ARRAY$6
-- 		-- ['newSkill1', 'newSkill2', 'newSkill3', 'newSkill4', 'newSkill5']
-- 		);
