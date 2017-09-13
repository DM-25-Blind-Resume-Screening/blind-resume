insert into Users
	(user_name, email, first_name, last_name, auth_id, picture)
values
	('cmwilson88', 'aasd@gmail.com', 'Christopher', 'Wilson', 'abc213414', 'piclink'),
	('meginocc','aas35d@gmail.com', 'Megan', 'wilson', 'ajnfwf324', 'piclink'),
	('mjordanfan23','aas23rd@gmail.com', 'Michael', 'Jordan','wuhuwnw', 'piclink' ),
	('username241', 'aas2567d@gmail.com', 'User', 'Name23','dij2iej','piclink'),
	('anotherUser','aas5236d@gmail.com', 'Another', 'User','2ijojnf','piclink');

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
