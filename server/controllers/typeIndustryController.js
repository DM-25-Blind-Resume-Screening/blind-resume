module.exports = {
	getAllIndustries(req, res, next) {
		const db = req.app.get('db');

		db.getAllIndustries().then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err))
	},
	getAllJobTypes(req, res, next) {
		const db = req.app.get('db');

		db.getAllJobTypes().then(response => {
			res.status(200).send(response)
		}).catch(err => console.log(err))
	}
}