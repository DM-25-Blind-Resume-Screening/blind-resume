insert into Users
	(username, first_name, last_name)
values
	('cmwilson88', 'Christopher', 'Wilson');

insert into companies
	(name, city, state)
values
	('DevMountain', 'Provo', 'Utah'),
	('Apple', 'Cupertino', 'California'),
	('Facebook', 'San Francisco', 'California');

insert into industries
	(name)
values
	('Accounting'),
	('Automotive'),
	('Banking'),
	('Civil Engineering'),
	('Computer Software'),
	('Construction'),
	('Education'),
	('Government Relations'),
	('Hospital and Health Care'),
	('Hospitality'),
	('Information Technology and Services'),
	('Investment Banking'),
	('Legal Services'),
	('Maritime'),
	('Mental Health Care'),
	('Military'),
	('Newspapers'),
	('Nonprofits'),
	('Philanthropy'),
	('Retail'),
	('Space and Clown Aeronautics'),
	('Shipbuilding'),
	('Writing and Editing');


insert into job_types
	(name) 
values
	('Full-Time'),
	('Part-Time'),
	('Internship'),
	('Apprenticeship'),
	('Contract'),
	('Temporary');


-- DevMountain Job Posting 1
with devmtn_job1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Web Developer', 
			'Looking for a competent web developer to work on the Q functionality and help teach our students to code and stuff.',
			current_date
		)
	returning id
),
devmtn1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Use HTML and CSS to make our site look pretty', (select id from devmtn_job1)),
		('Use React.js to create component-based web applications', (select id from devmtn_job1)),
		('Help students in need of help', (select id from devmtn_job1)),
		('Host weekly workshops for students', (select id from devmtn_job1)),
		('Be Awesome', (select id from devmtn_job1))
),
devmtn1qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Three months experience developing full stack web applications', (select id from devmtn_job1)),
		('No formal education experience required', (select id from devmtn_job1)),
		('Patience with students', (select id from devmtn_job1)),
		('Ability to tolerate terrible puns', (select id from devmtn_job1))
)
insert into keywords
	(name, job_post_id)
values
	('Web Developer', (select id from devmtn_job1)),
	('JavaScript', (select id from devmtn_job1)),
	('React', (select id from devmtn_job1));


-- DevMountain Job Posting 2
with devmtn_job2 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Lead Instructor', 
			'Our lead instructor isn''t cutting it anymore.  His puns are bad.  Looking to replace him ASAP',
			current_date
		)
	returning id
),
devmtn2resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Make better puns', (select id from devmtn_job2)),
		('MAKE. BETTER. PUNS.', (select id from devmtn_job2))
),
devmtn2qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Ability to make better puns', (select id from devmtn_job2)),
		('Develop curriculum', (select id from devmtn_job2))
)
insert into keywords
	(name, job_post_id)
values
	('Curriculum Development', (select id from devmtn_job2)),
	('Angular', (select id from devmtn_job2)),
	('MongoDB', (select id from devmtn_job2));



-- Apple Job Posting
with apple_job1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, date_posted)
	values
		(
			DEFAULT, 2, 20, 1, 'Sales Associate', 
			'Looking for Sales Associate to assist customers in making important decisions',
			current_date
		)
	returning id
),
apple1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Sell Products', (select id from apple_job1)),
		('Sell More Products.', (select id from apple_job1)),
		('Live Mas', (select id from apple_job1))

),
apple2qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('High School Diploma or higher', (select id from apple_job1)),
		('Previous retail experience desired', (select id from apple_job1))
)
insert into keywords
	(name, job_post_id)
values
	('Sales', (select id from apple_job1)),
	('Technology', (select id from apple_job1)),
	('Customer Service', (select id from apple_job1));



-- Facebook Posting 1
with facebook_post1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, date_posted)
	values
		(
			DEFAULT, 3, 21, 1, 'CEO', 
			'Our CEO is spending too much time touring the country to run for president.  We need a new one.',
			current_date
		)
	returning id
),
fb1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Be CEO', (select id from facebook_post1)),
		('Attend Meetings', (select id from facebook_post1)),
		('Don''t be NOT CEO', (select id from facebook_post1))

),
fb1qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Harvard drop out preferred', (select id from facebook_post1)),
		('Another Qualification', (select id from facebook_post1))
)
insert into keywords
	(name, job_post_id)
values
	('Executive', (select id from facebook_post1)),
	('Technology', (select id from facebook_post1)),
	('Leadership', (select id from facebook_post1)),
	('Management', (select id from facebook_post1));


insert into saved_jobs
	(user_id, job_post_id)
values
	(1, 2),
	(1, 4);


with resume1 as (
	insert into resumes
		(id, user_id, linkedin_url, portfolio_url)
	values
		(default, 1, 'https://www.linkedin.com/in/christopher_wilson88', 'https://www.google.com') 
	returning id
),
resume1_exp as (
	insert into work_experiences
		(title, company, from_date, to_date, description, resume_id)
	values
		(
			'Web Developer', 'DevMountain', '6/2017', 'Present',
			'Utilized the newest technologies to create amazing web applications.  Specialities include ReactJS, VueJS, NodeJS, PostgreSQL, and MongoDB.  Worked on several projects relating to the curriculum at DevMountain and worked with students to help their growth',
			(select id from resume1)
		),
		(
			'School Psychologist', 'Putnam County School Board', '8/2015', '6/2017',
			'Small group and individual counseling.  Academic, intellectual, and social-emotional assessments',
			(select id from resume1)
		)
),
resume1_edu1 as (
	insert into education
		(school, degree, study_field, from_date, to_date, description, resume_id)
	values
		(
			'DevMountain', 'Junior Web Developer', 'Web Development', '6/2017', '9/2017',
			'Studied Full Stack development focusing on ReactJS, NodeJS, Express, and PostgreSQL',
			(select id from resume1)
		),
		(
			'University of Florida', 'Education Specialist (Ed.S.)', 'School Psychology', '8/2012', '5/2015',
			'Graduate studies focusing on psychoeducational assessments, small group and individual counseling, and crisis intervention',
			(select id from resume1)
		),
		(
			'Florida Gulf Coast University', 'Bachelor of Arts', 'Psychology', '8/2008', '4/2012',
			'Undergraduate studies focusing on clinical psychology, health psychology, and pediatric psychology',
			(select id from resume1)
		)
),
resume1_skills as (
	insert into skills
		(name, resume_id)
	values 
		('ReactJS', (select id from resume1)),
		('VueJS', (select id from resume1)),
		('NodeJS', (select id from resume1)),
		('Organization', (select id from resume1)),
		('Time Management', (select id from resume1)),
		('Communication', (select id from resume1)),
		('Leadership', (select id from resume1))
)
select * from resume1;

insert into submitted_resumes
	(resume_id, job_post_id)
values 
	(1, 2),
	(1, 3),
	(1, 4); 
