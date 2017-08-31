DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS companies CASCADE;
DROP TABLE IF EXISTS job_postings CASCADE;
DROP TABLE IF EXISTS keywords CASCADE;
DROP TABLE IF EXISTS resumes CASCADE;
DROP TABLE IF EXISTS save_jobs CASCADE

-- Users
CREATE TABLE IF NOT EXISTS users (
	id serial primary key,
	username text unique not null,
	email text unique not null,
	password text not null,
	first_name text not null,
	last_name text not null,
	date_of_birth date not null
)

