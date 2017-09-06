module.exports = {
	getResumeByUser(req, res, next) {
		const db = req.app.get('db');

		db.getResumeByUser([req.params.user_id]).then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err));
	}
}