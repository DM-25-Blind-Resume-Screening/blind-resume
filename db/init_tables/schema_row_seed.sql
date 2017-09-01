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
		(id, company_id, industry_id, job_type_id, title, job_description, responsibilities, qualifications, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Web Developer', 
			'Looking for a competent web developer to work on the Q functionality and help teach our students to code and stuff.',
			'<ul><li>Use HTML and CSS to make our site look pretty</li><li>Use React.js to create component-based web applicatoins</li><li>Help students in need of help</li><li>Host weekly workshops for students</li><li>Be Awesome</li></ul>',
			'<ul><li>Three months experience developing full stack web applications</li><li>No formal education experience required</li><li>Patience with students</li><li>Ability to tolerate terrible puns</li></ul>',
			current_date
		)
	returning id
),
dvtmtn1key1 as (
	insert into keywords
		(name, job_post_id)
	values
		('Web Developer', (select id from devmtn_job1))
),
dvmtn1key2 as (
	insert into keywords
		(name, job_post_id)
	values
		('JavaScript', (select id from devmtn_job1))
)
insert into keywords
	(name, job_post_id)
values
	('React', (select id from devmtn_job1));




-- DevMountain Job Posting 2
with devmtn_job2 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, responsibilities, qualifications, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Lead Instructor', 
			'Our lead instructor isn''t cutting it anymore.  His puns are bad.  Looking to replace him ASAP',
			'<ul><li>Use HTML and CSS to make our site look pretty</li><li>Use React.js to create component-based web applicatoins</li><li>Help students in need of help</li><li>Host weekly workshops for students</li><li>Be Awesome</li></ul>',
			'<ul><li>Three months experience developing full stack web applications</li><li>No formal education experience required</li><li>Patience with students</li><li>Ability to tolerate terrible puns</li></ul>',
			current_date
		)
	returning id
),
dvtmtn2key1 as (
	insert into keywords
		(name, job_post_id)
	values
		('Curriculum Development', (select id from devmtn_job2))
),
dvmtn2key2 as (
	insert into keywords
		(name, job_post_id)
	values
		('Angular', (select id from devmtn_job2))
)
insert into keywords
	(name, job_post_id)
values
	('MongoDB', (select id from devmtn_job2));




-- Apple Job Posting
with apple_job1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, responsibilities, qualifications, date_posted)
	values
		(
			DEFAULT, 2, 20, 1, 'Sales Associate', 
			'Looking for Sales Associate to assist customers in making important decisions',
			'<ul><li>Sell Products</li><li>Sell More Products</li><li>Live Mas</li></ul>',
			'<ul><li>High School Diploma or higher</li><li>Previous retail experience desired</li></ul>',
			current_date
		)
	returning id
),
appl1key1 as (
	insert into keywords
		(name, job_post_id)
	values
		('Sales', (select id from apple_job1))
),
apple2key2 as (
	insert into keywords
		(name, job_post_id)
	values
		('Technology', (select id from apple_job1))
)
insert into keywords
	(name, job_post_id)
values
	('Customer Service', (select id from apple_job1));



-- Facebook Posting 1
with facebook_post1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, job_description, responsibilities, qualifications, date_posted)
	values
		(
			DEFAULT, 2, 21, 1, 'CEO', 
			'Our CEO is spending too much time touring the country to run for president.  We need a new one.',
			'<ul><li>Be CEO</li><li>Attend Meetings</li><li>Don''t be NOT CEO</li></ul>',
			'<ul><li>Harvard drop out preferred</li><li>Another Qualification</li></ul>',
			current_date
		)
	returning id
),
fb1key1 as (
	insert into keywords
		(name, job_post_id)
	values
		('Executive', (select id from facebook_post1))
),
fb1key2 as (
	insert into keywords
		(name, job_post_id)
	values
		('Technology', (select id from facebook_post1))
),
fb1key3 as (
	insert into keywords
		(name, job_post_id)
	values
		('Leadership', (select id from facebook_post1))
)
insert into keywords
	(name, job_post_id)
values
	('Management', (select id from facebook_post1));


insert into saved_jobs
	(user_id, job_post_id)
values
	(1, 2),
	(1, 4);

insert into resumes
	(user_id, linkedin_url, portfolio_url, experience, education, skills)
values
	(
		1, 'https://www.linkedin.com/in/christopher_wilson88', 'https://www.google.com', 
		'<h1>Experience</h1><br><ul><li>DevMountain - Web Developer</li><li>Putnam County School Board - School Psychologist</li></ul><br><hr><br>',
		'<h1>Education</h1><br><ul><li>DevMountain - Web Development Bootcamp</li><li>University of Florida - Ed.S. in School Psychology</li><li>Florida Gulf Coast University - B.S. in Psychology</li></ul><br><hr><br>',
		'<h1>Skills</h1><br><ul><li>VueJS</li><li>ReactJS</li><li>NodeJS</li><li>PostgreSQL</li></ul>'
	);

insert into submitted_resumes
	(resume_id, job_post_id)
values 
	(1, 2),
	(1, 3),
	(1, 4); 