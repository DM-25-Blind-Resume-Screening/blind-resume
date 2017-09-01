const bodyParser = require('body-parser'),
	  express 	 = require('express'),
	  massive	 = require('massive'),
	  cors		 = require('cors'),
	  app		 = express();

const connectionString = require('../config');


app.use(bodyParser.json());
app.use(cors());
app.use(express.static(`${__dirname}/../public/dist`))


massive(connectionString)
	.then(db => {
		app.set('db', db);

		db.init_tables.schema_create_seed().then(res => {
			console.log('schema create tables')
			db.init_tables.schema_row_seed().then(res => {
				console.log('schema insert dummy rows');
			}).catch(err => console.log(err));
		}).catch(err => console.log(err));
	}).catch(err => console.log(err));



const PORT = 3000
app.listen(PORT, () => console.log(`Listening on port ${PORT}`))