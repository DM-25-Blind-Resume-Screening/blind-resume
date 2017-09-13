module.exports = {
	createNewJobPost(req, res, next) {
		const db = req.app.get('db');

		db.createNewJobPost([
				req.params.company_id,
				req.body.industry,
				req.body.jobType,
				req.body.title,
				req.body.description,
				req.body.responsibilities,
				req.body.qualifications,
				req.body.keywords
			]).then(response => {
				res.status(200).send(response)
			}).catch(err => console.log(err))
	},
	getCompanyInfo(req, res, next) {
		const db = req.app.get('db');

		db.getCompanyInfo([req.params.company_id]).then(response=> {
			res.status(200).send(response)
		}).catch(err => console.log(err))
	},
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
	getBlindResumesByJobPostId(req, res, next) {
		const db = req.app.get('db');

		db.getBlindResumesByJobPostId([req.params.job_post_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err));
	},
	getBlindResumesByJobPostIdShortlist(req, res,next) {
		const db = req.app.get('db');

		db.getBlindResumeByJobPostIdShortlist([req.params.job_post_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err))
	},
	getSelectedCandidatesByJobPostId(req, res, next) {
		const db = req.app.get('db');

		db.getSelectedCandidatesByJobPostId([req.params.job_post_id]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err))
	},
	updateResumeToShortlist(req, res, next) {
		const db = req.app.get('db');

		db.updateResumeToShortlist([req.params.job_post_id, req.params.resume_id ]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	updateResumeToInterview(req, res, next) {
		const db = req.app.get('db');

		db.updateResumeToInterview([req.params.job_post_id, req.params.resume_id])
			.then(response => {
				res.status(200).send(response)
			}).catch(err => console.log(err))
	},
	deleteSubmittedResume(req, res, next) {
		const db = req.app.get('db')

		db.deleteSubmittedResume([req.params.job_post_id, req.params.resume_id]).then(response => {
			res.status(200).send(response);
		}).catch(err => console.log(err));
	}
}
