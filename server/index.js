// const bodyParser = require('body-parser'),
// 	  express 	 = require('express'),
// 	  massive	 = require('massive'),
// 	  cors		 = require('cors'),
// 	  app		 = express(),
// 		session = require('express-session'),
// 		passport = require('passport'),
// 		Auth0strategy = require('passport-auth0'),
// 		config = require('../config'),
// 		port = 3000
//
// app.use(bodyParser.json());
// app.use(cors());
// app.use(express.static(`${__dirname}/../public/dist`));
// app.use(session({
// 	secret: 'secret',
// 	resave: false,
// 	saveUninitialized: true
// }));
//
// //INITIALIZE POSTGRES TABLES
// massive(MASSIVE_URI)
// .then( db => {
//   app.set('db', db);
//   // db.init.create_table();
// }).catch(err => console.log(err))
//
//
// //SET UP PASSPORT
// passport.use(new Auth0Strategy({
//   domain: config.domain,
//   clientID: config.clientId,
//   clientSecret: config.clientSecret,
//   callbackURL: '/#/auth/callback'
// }, function(accessToken, refreshToken, extraParams, profile, done) {
//   //GO TO DB TO FIND AND CREATE USER
//   let db = app.get('db')
//   ,email = profile.email
//   ,name = profile.name
//   ,picture = profile.picture
//   db.users.get_user(auth0Id).then(res=> {
//     if(!res.length){
//         db.users.create_user([name, email, picture])
//         .then((userCreated) => {
//           console.log('Logged in user: ',userCreated)
//               return done(null, userCreated[0])
//             }).catch( (e) => console.log(e))
//       } else {
//         return done(null, res[0]);
//       }
//     }).catch( err => console.log( err )) // GOES TO SERIALIZE-USER WHEN U INVOKE DONE
// }));
//
// app.get('/auth/', passport.authenticate('auth0'))
// app.get('/auth/callback', passport.authenticate('auth0', {successRedirect: 'http://localhost:8080/main'}))
//
// passport.serializeUser(function(profileToSession, done) {
//   done(null, profileToSession); // PUTS 2ND ARGUMENT ON SESSION
// });
//
// passport.deserializeUser(function(profileFromSession, done) {
//   done(null, profileFromSession); //PUTS 2ND ARGUMENT ON REQ.USER
// });
// app.get('/api/main', function(req,res){
//     res.send(req.user)
// })
//
//
// //PORT
// app.listen(PORT, () => console.log(`Listening on port ${port}`))
