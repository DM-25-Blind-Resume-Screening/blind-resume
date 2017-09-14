update resumes
	set about_me = $1, location = $2, email = $3, phone = $4, portfolio_url = $5, linkedin_url = $6
where user_id = $7
returning *