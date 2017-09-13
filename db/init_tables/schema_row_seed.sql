insert into Users
	(user_name, email, first_name, last_name, auth_id, picture)
values
	('cmwilson88', 'aasd@gmail.com', 'Christopher', 'Wilson', 'abc213414', 
		'http://digitalspyuk.cdnds.net/17/31/768x431/gallery-1501685894-it-pennywise.jpg'
		-- 'https://st.depositphotos.com/1987283/2136/i/950/depositphotos_21362149-stock-photo-headshot-of-serious-professional-doctor.jpg'
		),
	('meginocc','aas35d@gmail.com', 'Megan', 'wilson', 'ajnfwf324', 
		'http://digitalspyuk.cdnds.net/17/31/768x431/gallery-1501685894-it-pennywise.jpg'
		-- 'https://i.pinimg.com/236x/29/0c/96/290c9625d895fe4f6f39f1d41d41eb1c--corporate-portrait-business-portrait.jpg'
		),
	('mjordanfan','aas23rd@gmail.com', 'Michael', 'Jordan','wuhuwnw', 
		'http://digitalspyuk.cdnds.net/17/31/768x431/gallery-1501685894-it-pennywise.jpg'
		-- 'https://thumbs.dreamstime.com/t/professional-headshot-closeup-portrait-smart-elderly-man-pink-shirt-dark-eye-glasses-specs-sitting-down-laughing-indoors-72972126.jpg' 
		),
	('username241', 'aas2567d@gmail.com', 'User', 'Name23','dij2iej',
		'http://digitalspyuk.cdnds.net/17/31/768x431/gallery-1501685894-it-pennywise.jpg'
		-- 'http://media.idownloadblog.com/wp-content/uploads/2012/04/Phil-Schiller-headshot-e1362692403868.jpg'
		),
	('anotherUser','aas5236d@gmail.com', 'Another', 'User','2ijojnf',
		'http://digitalspyuk.cdnds.net/17/31/768x431/gallery-1501685894-it-pennywise.jpg'
		-- 'https://cdn.xl.thumbs.canstockphoto.com/canstock24825219.jpg'
		);

insert into companies
	(name, logo_url, city, state)
values
	('DevMountain', 'http://ios.devmountain.com/public/icon.png','Provo', 'Utah'),
	('Apple', 'https://image.freepik.com/free-icon/apple-logo_318-40184.jpg','Cupertino', 'California'),
	('Facebook', 'https://facebookbrand.com/wp-content/themes/fb-branding/prj-fb-branding/assets/images/fb-art.png','San Francisco', 'California'),
	('SharpSpring', 'https://sharpspring.com/wp-content/uploads/2017/01/SharpSpring_Color_RGB_twitter_white.png','Gainesville', 'Florida'),
	('Overstock', 'https://d1iiooxwdowqwr.cloudfront.net/pub/appsubmissions/20170331163128_iosappiconoverstock.png','Lehi', 'Utah'),
	('Younique', 'https://media.licdn.com/media-proxy/ext?w=800&h=800&hash=KovvdfsGVeqNV83eETwyMUYogc0%3D&ora=1%2CaFBCTXdkRmpGL2lvQUFBPQ%2CxAVta5g-0R6nlh8Tw1It6a2FowGz60oISIfYC2G-KlTfi6ThEQaYCLauCMPDxixnCV175H0zFrXNCVqFa5LAT-PvA4EIz-mSXsiaf1YPUBYX0UV768kUHTspmKClEtH6Widj46JIYyg','Lehi', 'Utah'),
	('AirBNB', 'https://assets.entrepreneur.com/content/3x2/1300/1405612741-airbnb-why-new-logo.jpg','San Francisco', 'California');

insert into industries
	(name)
values
	('Accounting'),
	('Automotive'),
	('Banking'),
	('Civil Engineering'),
	('Computer Software'),
	('Construction'),
	('Education'),
	('Government Relations'),
	('Hospital and Health Care'),
	('Hospitality'),
	('Information Technology and Services'),
	('Investment Banking'),
	('Legal Services'),
	('Maritime'),
	('Mental Health Care'),
	('Military'),
	('Newspapers'),
	('Nonprofits'),
	('Philanthropy'),
	('Retail'),
	('Space and Clown Aeronautics'),
	('Shipbuilding'),
	('Writing and Editing'),
	('Human Resources');


insert into job_types
	(name)
values
	('Full-Time'),
	('Part-Time'),
	('Internship'),
	('Apprenticeship'),
	('Contract'),
	('Temporary');
