module.exports = {
	createResume(req, res, next) {
		const db = req.app.get('db');

		db.resumes.createResume([
			req.params.user_id,
			req.body.linkedin,
			req.body.portfolio,
			req.body.work_exp,
			req.body.education
		]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	getResumeByUser(req, res, next) {
		const db = req.app.get('db');

		db.resumes.getResumeByUser([req.params.user_id]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	},
	updateResumeWorkExperience(req, res, next) {
		const db = req.app.get('db');

		db.resumes.updateResumeWorkExperience([
				req.params.resume_id,
				req.body.title,
				req.body.company,
				req.body.from_date,
				req.body.to_date,
				req.body.description
			]).then(response => {
				res.status(200).send(response)
			}).catch(err => console.log(err));
	},
	updateResumeEducation(req, res, next) {
		const db = req.app.get('db');

		db.resumes.updateResumeEducation([
				req.params.resume_id,
				req.body.school,
				req.body.degree,
				req.body.study_field,
				req.body.from_date,
				req.body.to_date,
				req.body.description
			]).then(response => {
				res.status(200).send(response)
			}).catch(err => console.log(err));
	}
}