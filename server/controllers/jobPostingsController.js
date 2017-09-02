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
	getAllCompanyJobPostings(req, res, next) {
		const db = req.app.get('db');

		db.getAllCompanyJobPostings([req.params.company_id]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	getSavedJobPostingsByUser(req, res, next) {
		const db = req.app.get('db');

		db.getSavedJobPostingsByUser([req.params.user_id]).then(response =>  {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	}
}