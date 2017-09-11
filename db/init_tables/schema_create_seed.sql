DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS companies CASCADE;
DROP TABLE IF EXISTS job_postings CASCADE;
DROP TABLE IF EXISTS responsibilities CASCADE;
DROP TABLE IF EXISTS qualifications CASCADE;
DROP TABLE IF EXISTS keywords CASCADE;
DROP TABLE IF EXISTS industries CASCADE;
DROP TABLE IF EXISTS job_types CASCADE;
DROP TABLE IF EXISTS resumes CASCADE;
DROP TABLE IF EXISTS saved_jobs CASCADE;
DROP TABLE IF EXISTS submitted_resumes CASCADE;
DROP TABLE IF EXISTS work_experiences CASCADE;
DROP TABLE IF EXISTS education CASCADE;
DROP TABLE IF EXISTS skills CASCADE;

-- Users
CREATE TABLE IF NOT EXISTS users (
	id serial primary key,
	username text unique not null,
	first_name text not null,
	last_name text not null
);

-- Companies
CREATE TABLE IF NOT EXISTS companies (
	id serial primary key,
	logo_url text not null,
	name text not null,
	city text not null,
	state text not null
);

--Industries
CREATE TABLE IF NOT EXISTS industries (
	id serial primary key,
	name text not null
);

-- Job types
CREATE TABLE IF NOT EXISTS job_types (
	id serial primary key,
	name text not null
);

-- job_postings
CREATE TABLE IF NOT EXISTS job_postings (
	id serial primary key,
	company_id integer not null,
	foreign key (company_id) references companies(id),
	industry_id integer not null,
	foreign key (industry_id) references industries(id),
	job_type_id integer not null,
	foreign key (job_type_id) references job_types(id),
	title text not null,
	job_description text,
	date_posted date
);

-- qualifications
CREATE TABLE IF NOT EXISTS qualifications (
	id serial primary key,
	qual_text text,
	job_post_id integer not null,
	foreign key (job_post_id) references job_postings(id)
);

-- responsibilities
CREATE TABLE IF NOT EXISTS responsibilities (
	id serial primary key,
	resp_text text,
	job_post_id integer not null,
	foreign key (job_post_id) references job_postings(id)
);

-- keywords
CREATE TABLE IF NOT EXISTS keywords (
	id serial primary key,
	name text not null,
	job_post_id integer not null,
	foreign key (job_post_id) references job_postings(id)
);

-- save_jobs
CREATE TABLE IF NOT EXISTS saved_jobs (
	id serial primary key,
	user_id integer not null,
	job_post_id integer not null,
	foreign key (job_post_id) references job_postings(id),
	foreign key (user_id) references users(id)
);

-- resumes
CREATE TABLE IF NOT EXISTS resumes (
	id serial primary key,
	user_id integer not null,
	foreign key (user_id) references users(id),
	location text default null,
	about_me text default null,
	email text default null,
	phone text default null,
	linkedin_url text default null,
	portfolio_url text default null
); 

-- work_experiences
CREATE TABLE IF NOT EXISTS work_experiences (
	id serial primary key,
	title text not null,
	company text not null,
	from_date text not null,
	to_date text not null,
	description text not null,
	resume_id integer not null,
	foreign key (resume_id) references resumes(id)
);

-- education
CREATE TABLE IF NOT EXISTS education (
	id serial primary key,
	school text not null,
	degree text not null,
	study_field text not null,
	from_date text not null,
	to_date text not null,
	description text not null,
	resume_id integer not null,
	foreign key (resume_id) references resumes(id)
);

-- skills
CREATE TABLE IF NOT EXISTS skills (
	id serial primary key,
	name text not null,
	resume_id integer not null,
	foreign key (resume_id) references resumes(id)
);

-- submitted resumes
CREATE TABLE IF NOT EXISTS submitted_resumes (
	id serial primary key,
	resume_id integer not null,
	job_post_id integer not null,
	shortlist boolean default false,
	interview_candidate boolean default false,
	accepted boolean default false,
	foreign key (job_post_id) references job_postings(id),
	foreign key (resume_id) references resumes(id)
);
