DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS companies CASCADE;
DROP TABLE IF EXISTS job_postings CASCADE;
DROP TABLE IF EXISTS keywords CASCADE;
DROP TABLE IF EXISTS industries CASCADE;
DROP TABLE IF EXISTS job_types CASCADE;
DROP TABLE IF EXISTS resumes CASCADE;
DROP TABLE IF EXISTS saved_jobs CASCADE;
DROP TABLE IF EXISTS submitted_resumes CASCADE;

-- Users
CREATE TABLE IF NOT EXISTS users (
	id serial primary key,
	username text unique not null,
	email text unique not null,
	password text not null,
	first_name text not null,
	last_name text not null,
	date_of_birth date not null
);

-- Companies
CREATE TABLE IF NOT EXISTS companies (
	id serial primary key,
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
	industry text not null,
	job_type text not null,
	job_description text,
	responsibilities text,
	qualifications text,
	date_posted date
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
	linkedin_url text,
	portfolio_url text,
	experience text,
	education text,
	skills text,
	shortlist boolean default false,
	accepted boolean default false
); 

-- submitted resumes
CREATE TABLE IF NOT EXISTS submitted_resumes (
	id serial primary key,
	resume_id integer not null,
	job_post_id integer not null,
	foreign key (job_post_id) references job_postings(id),
	foreign key (resume_id) references resumes(id)
);
