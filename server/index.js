const bodyParser = require('body-parser'),
	  express 	 = require('express'),
	  massive	 = require('massive'),
	  cors		 = require('cors'),
	  app		 = express();

const connectionString = require('../config');


app.use(bodyParser.json());
app.use(cors());
app.use(express.static(`${__dirname}/../public/dist`))



const PORT = 3000
app.listen(PORT, () => console.log(`Listening on port ${PORT}`))