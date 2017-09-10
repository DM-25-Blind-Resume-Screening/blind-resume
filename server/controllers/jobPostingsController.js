module.exports = {
	getAllJobPostings(req, res, next) {
		const db = req.app.get('db');

		if(req.query.keyword) {
			let searchTermModulus = `%${req.query.keyword}%`;
			console.log(req.query)
			db.getJobPostByKeyword([searchTermModulus]).then(response => {
				res.status(200).send(response);
			}).catch(err => console.log(err));
		} else {
			db.getAllJobPostings().then(response => {
				res.status(200).send(response);
			}).catch(err => console.log(err));
		}
	},
	getJobPostById(req, res, next) {
		const db = req.app.get('db');

		db.getJobPostById([req.params.job_post_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err));
	},
	getAllCompanyJobPostings(req, res, next) {
		const db = req.app.get('db');

		db.getAllCompanyJobPostings([req.params.company_id]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	getCompanyJobPostById(req, res, next) {
		const db = req.app.get('db');

		db.getCompanyJobPostByJobId([req.params.company_id, req.params.job_post_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err));
	},
	getSavedJobPostingsByUser(req, res, next) {
		const db = req.app.get('db');

		db.getSavedJobPostingsByUser([req.params.user_id]).then(response =>  {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	getSubmittedResumesByJobPost(req, res, next) {
		const db = req.app.get('db');

		db.getSubmittedResumesByJobPost([req.params.job_post_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err));
	}
}
