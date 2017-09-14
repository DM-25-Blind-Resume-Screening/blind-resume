-----------------------------------------------------------------
--                    DevMoutnain                              --
-----------------------------------------------------------------

-- DevMountain Job Posting 1
with devmtn_job1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Web Developer', 'Provo, UT',
			'Looking for a competent web developer to work on the Q functionality and help teach our students to code and stuff.',
			current_date
		)
	returning id
),
devmtn1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Use HTML and CSS to make our site look pretty', (select id from devmtn_job1)),
		('Use React.js to create component-based web applications', (select id from devmtn_job1)),
		('Help students in need of help', (select id from devmtn_job1)),
		('Host weekly workshops for students', (select id from devmtn_job1)),
		('Be Awesome', (select id from devmtn_job1))
),
devmtn1qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Three months experience developing full stack web applications', (select id from devmtn_job1)),
		('No formal education experience required', (select id from devmtn_job1)),
		('Patience with students', (select id from devmtn_job1)),
		('Ability to tolerate terrible puns', (select id from devmtn_job1))
)
insert into keywords
	(name, job_post_id)
values
	('Web Developer', (select id from devmtn_job1)),
	('JavaScript', (select id from devmtn_job1)),
	('React', (select id from devmtn_job1));


-- DevMountain Job Posting 2
with devmtn_job2 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 1, 5, 1, 'Lead Instructor', 'Provo, UT',
			'Our lead instructor isn''t cutting it anymore.  His puns are bad.  Looking to replace him ASAP',
			current_date
		)
	returning id
),
devmtn2resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Make better puns', (select id from devmtn_job2)),
		('MAKE. BETTER. PUNS.', (select id from devmtn_job2))
),
devmtn2qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Ability to make better puns', (select id from devmtn_job2)),
		('Develop curriculum', (select id from devmtn_job2))
)
insert into keywords
	(name, job_post_id)
values
	('Curriculum Development', (select id from devmtn_job2)),
	('Angular', (select id from devmtn_job2)),
	('MongoDB', (select id from devmtn_job2));


-----------------------------------------------------------------
--                    Apple                                    --
-----------------------------------------------------------------

-- Apple Job Posting
with apple_job1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 2, 20, 1, 'Sales Associate', 'Cupertino, CA',
			'Looking for Sales Associate to assist customers in making important decisions',
			current_date
		)
	returning id
),
apple1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Sell Products', (select id from apple_job1)),
		('Sell More Products.', (select id from apple_job1)),
		('Live Mas', (select id from apple_job1))

),
apple2qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('High School Diploma or higher', (select id from apple_job1)),
		('Previous retail experience desired', (select id from apple_job1))
)
insert into keywords
	(name, job_post_id)
values
	('Sales', (select id from apple_job1)),
	('Technology', (select id from apple_job1)),
	('Customer Service', (select id from apple_job1));

with apple_post2 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 2, 5, 2, 'Part Time Reseller Specialist', 'Cupertino, CA',
      		'As a Specialist in a reseller store, you help create the energy and excitement around Apple products, providing the right solutions and getting products into customers'' hands. You understand that Apple is dedicated to delivering a customer experience that''s unlike any other. It starts with you discovering customers'' needs. You match those needs with the right products, and then with the support of your partner you help customers develop lifelong relationships with Apple. Every day you''ll encounter unique opportunities to change lives and make a difference.',
            current_date
        )
    returning id
),
apple2resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('You have a passion for Apple and eager to share that passion with others. ', (select id from apple_post2)),
        ('You are willing to embrace Apple''s unique style for service. ', (select id from apple_post2)),
        ('You have strong people skills—you''re approachable, a good listener, and empathetic.', (select id from apple_post2)),
        ('Able to work a schedule that includes evenings and weekends, approximately 24 hours per week. ', (select id from apple_post2)),
        ('Cross-industry experience is welcome—a retail background is not necessary but preferred. ', (select id from apple_post2))
),
apple2qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Strong communication and listening skills that let you speak as freely and comfortably with small groups as with individual customers.', (select id from apple_post2)),
        ('Strong interest in connecting technology to customer needs, with a passion for continuous learning about Apple products and features.', (select id from apple_post2)),
        ('You have excellent customer service skills that allow you to translate complex conversations into simple solutions.', (select id from apple_post2))
)
insert into keywords
    (name, job_post_id)
values
    ('Digital Marketing', (select id from apple_post2)),
    ('Technology', (select id from apple_post2)),
    ('China', (select id from apple_post2)),
    ('TeamLead', (select id from apple_post2)),
    ('Performance', (select id from apple_post2));


with apple_post3 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 2, 24, 5, 'Recruiting Coordinator (6 months contract)', 'Cupertino, CA', 
      'Imagine what you could do here. At Apple, great ideas have a way of becoming great products, services, and customer experiences very quickly. Bring passion and dedication to your job and there''s no telling what you could accomplish. In this role, you will be responsible for providing the highest level of recruiting coordination services to Apple Inc.''s business leaders, helping to bring the best talents in the market by supporting the recruiters, candidates and managers through Apple''s selection process.',         
      current_date
        )
    returning id
),
apple3resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Help the team to place the right person in the right position at the right time.', (select id from apple_post3)),
        ('Be an excellent relationship builder and have a keen sense for managing all partners including candidates, hiring managers and others.', (select id from apple_post3)),
        ('Understand the complete recruiting function, including: research, sourcing, networking, behavioural based interviewing and closing.', (select id from apple_post3)),
        ('Have the ability to approach problems flexibly to efficiently deal with ambiguity and the evolving needs of the business.  ', (select id from apple_post3)),
        ('Stay curious and develop a strong understanding of all business functions.', (select id from apple_post3))
),
apple3qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Administrative experience in a fast-paced multinational environment- recruitment agency experience welcomed.', (select id from apple_post3)),
        ('Strong work ethic and team spirit to establish and maintain credibility and trust among business partners.', (select id from apple_post3)),
        ('Must relate well to all kinds of people inside and outside the organization. Being skilled at understanding others is essential.', (select id from apple_post3)),
    ('Strong administrative skills.', (select id from apple_post3)),
    ('Experience in other areas of HR a plus.', (select id from apple_post3))
)
insert into keywords
    (name, job_post_id)
values
    ('Recruit', (select id from apple_post3)),
    ('Contract', (select id from apple_post3)),
    ('Apple', (select id from apple_post3)),
    ('Service', (select id from apple_post3)),
    ('HR', (select id from apple_post3));

-----------------------------------------------------------------
--                    FACEBOOK                                 --
-----------------------------------------------------------------
-- Facebook Posting 1
with facebook_post1 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 3, 21, 1, 'CEO', 'San Francisco, CA',
			'Our CEO is spending too much time touring the country to run for president.  We need a new one.',
			current_date
		)
	returning id
),
fb1resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Be CEO', (select id from facebook_post1)),
		('Attend Meetings', (select id from facebook_post1)),
		('Don''t be NOT CEO', (select id from facebook_post1))

),
fb1qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Harvard drop out preferred', (select id from facebook_post1)),
		('Another Qualification', (select id from facebook_post1))
)
insert into keywords
	(name, job_post_id)
values
	('Executive', (select id from facebook_post1)),
	('Technology', (select id from facebook_post1)),
	('Leadership', (select id from facebook_post1)),
	('Management', (select id from facebook_post1));


-- Facebook Posting 2
with facebook_post2 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 3, 21, 1, 'Software Developer, VoIP (WhatsAPP)', 'San Francisco, CA',
			'WhatsApp is a fast, simple and reliable way to talk to anyone in the world. More than 1 billion people in over 180 countries use WhatsApp to stay in touch with friends and family, anytime and anywhere. WhatsApp is not only free but also available on multiple mobile devices and in low connectivity areas — making it accessible and reliable wherever you are. It''s a simple and secure way to share your favorite moments, send important information or catch up with a friend. WhatsApp helps people connect and share no matter where they are in the world. Join a world-class engineering-driven company, where you''ll have instant impact from day one. WhatsApp has an open culture and flat organization. Every engineer is literally sitting a few steps away from the founders. As a member of our engineering team you will tackle challenging issues of scale, reliability and security while delivering a delightful, simple user experience to a global user base. If you love writing code, hate tons of meetings, then come talk to us',
			current_date
		)
	returning id
),
fb2resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('This person will help implement new features and optimize the quality of WhatsApp voice calls and make them reliable across various network conditions and devices', (select id from facebook_post2))

),
fb2qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('B.S. Computer Science or related field', (select id from facebook_post2)),
		('Experience with programming in C/C++', (select id from facebook_post2)),
		('2+ years of experience building mobile applications on Android or iOS', (select id from facebook_post2)),
		('5+ years of hands-on networking experience', (select id from facebook_post2)),
		('Prior experience with VoIP on mobile devices', (select id from facebook_post2))
)
insert into keywords
	(name, job_post_id)
values
	('VoIP', (select id from facebook_post2)),
	('Technology', (select id from facebook_post2)),
	('Mobile', (select id from facebook_post2)),
	('Android', (select id from facebook_post2)),
	('iOS', (select id from facebook_post2));



-- Facebook Posting 3
with facebook_post3 as (
	insert into job_postings
		(id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
	values
		(
			DEFAULT, 3, 21, 1, 'Mobile Software Developer, Analytics', 'San Francisco, CA',
			'WhatsApp is a fast, simple and reliable way to talk to anyone in the world. More than 1 billion people in over 180 countries use WhatsApp to stay in touch with friends and family, anytime and anywhere. WhatsApp is not only free but also available on multiple mobile devices and in low connectivity areas — making it accessible and reliable wherever you are. It''s a simple and secure way to share your favorite moments, send important information or catch up with a friend. WhatsApp helps people connect and share no matter where they are in the world. Join a world-class engineering-driven company, where you''ll have instant impact from day one. WhatsApp has an open culture and flat organization. Every engineer is literally sitting a few steps away from the founders. As a member of our engineering team you will tackle challenging issues of scale, reliability and security while delivering a delightful, simple user experience to a global user base. If you love writing code, hate tons of meetings, then come talk to us',
			current_date
		)
	returning id
),
fb3resp as (
	insert into responsibilities
		(resp_text, job_post_id)
	values
		('Work with mobile client engineers to help them define and analyze data for improving product performance and quality', (select id from facebook_post3)),
		('Define and maintain a set of key product performance and quality metrics', (select id from facebook_post3)),
		('Develop techniques for highlighting significant changes in performance and quality metrics (e.g. between two software releases)', (select id from facebook_post3)),
		('Develop techniques for tracking performance and quality metrics over time', (select id from facebook_post3)),
		('Work with tool engineers to automate workflows and create tools for performance and quality metrics tracking', (select id from facebook_post3)),
		('Lead individual projects for making data-driven product improvements', (select id from facebook_post3))
),
fb3qual as (
	insert into qualifications
		(qual_text, job_post_id)
	values
		('Understanding of statistical data analysis techniques used for classification, regression, clustering, dimensionality reduction, anomaly detection', (select id from facebook_post3)),
		('2+ years or experience applying statistical data analysis to real-life problems', (select id from facebook_post3)),
		('Knowledge of data analysis tools and libraries like “PyData” and R', (select id from facebook_post3)),
		('Ability to present data and communicate analysis results in a way that doesn''t require statistical background to understand', (select id from facebook_post3)),
		('Ability to work independently, determining what to instrument and collect, with an eye toward improving the product', (select id from facebook_post3)),
		('Ability to automate data analysis steps using Python', (select id from facebook_post3)),
		('BS in statistics, math or equivalent', (select id from facebook_post3)),
		('Ability to work in a team', (select id from facebook_post3))

)
insert into keywords
	(name, job_post_id)
values
	('Statistics', (select id from facebook_post3)),
	('Technology', (select id from facebook_post3)),
	('Mobile', (select id from facebook_post3)),
	('Android', (select id from facebook_post3)),
	('iOS', (select id from facebook_post3));



-----------------------------------------------------------------
--                   OVERSTOCK                                 --
-----------------------------------------------------------------
with overstock_post1 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 5, 11, 1, 'Architect', 'Lehi, UT',
            'As a Software Architect, you will be expected to work on high-level architecture problems, low-level design, coding issues and everything in between. We value intelligence, creativity, quality, adaptability, technical leadership, and a strong interest to learn. You will work closely with various development teams who all share a common goal: building highly reliable systems that can handle huge loads without breaking a sweat.',
            current_date
        )
    returning id
),
os1resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Providing technical leadership across all software and operations groups', (select id from overstock_post1)),
        ('Making fact-based recommendations regarding technology adoption and purchase', (select id from overstock_post1)),
        ('Collaborating with business teams, technical teams, and vendors', (select id from overstock_post1)),
        ('Building and maintaining frameworks, templates, and best practice guides', (select id from overstock_post1)),
        ('Providing direct assistance to teams and projects in solving hard technical problems', (select id from overstock_post1)),
        ('Mentoring staff, increasing awareness of code quality, performance, algorithms, deployment methodologies and operations', (select id from overstock_post1))
),
os1qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('5+ years of software development experience in recent versions of Java, preferably having Java 8 experience', (select id from overstock_post1)),
        ('Experience with SOA and/or Microservices Architecture using REST Architectural Style', (select id from overstock_post1)),
        ('2+ years Architecture or High Level Design experience', (select id from overstock_post1)),
        ('Proficiency testing software using JUnit/TestNG and mocking, integration testing, regression testing and state coverage testing', (select id from overstock_post1)),
        ('Database and SQL experience, preferably with Oracle, Cassandra, Mongo or Redis', (select id from overstock_post1)),
        ('Experience with Object Oriented design and Software Design Patterns', (select id from overstock_post1)),
        ('Experience with Object Relational Mapping (ORM) tools such as Spring JPA, Hibernate, etc.', (select id from overstock_post1)),
        ('Familiarity with the Spring Framework', (select id from overstock_post1))
)
insert into keywords
    (name, job_post_id)
values
    ('Software', (select id from overstock_post1)),
    ('Technology', (select id from overstock_post1)),
    ('Java', (select id from overstock_post1)),
    ('SQL', (select id from overstock_post1)),
    ('SOA', (select id from overstock_post1));


with overstock_post2 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 5, 11, 1, 'Pricing Strategist', 'Lehi, UT',
            'As a Software Architect, you will be expected to work on high-level architecture problems, low-level design, coding issues and everything in between. We value intelligence, creativity, quality, adaptability, technical leadership, and a strong interest to learn. You will work closely with various development teams who all share a common goal: building highly reliable systems that can handle huge loads without breaking a sweat.',
            current_date
        )
    returning id
),
os2resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Work with the pricing team manager to design, prototype, develop and execute econometric models for data driven price optimization techniques.', (select id from overstock_post2)),
        ('Analyze business data and identify pricing opportunities.', (select id from overstock_post2)),
        ('Execute pricing strategies and price changes.', (select id from overstock_post2)),
        ('Other objectives and tasks as needed.', (select id from overstock_post2)),
        ('Perform other duties as required and assigned by manager and upper management.', (select id from overstock_post2)),
        ('Follow legal policies as directed.', (select id from overstock_post2))
),
os2qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Experience in analytical modeling and/or pricing in the retail industry .', (select id from overstock_post2)),
        ('Experience using SAS, SPSS, or other statistical modeling software packages a plus.', (select id from overstock_post2)),
        ('Proficiency in using SQL .', (select id from overstock_post2)),
        ('Must be a strong analytical thinker.', (select id from overstock_post2)),
        ('Proficiency in Microsoft Office, especially Excel', (select id from overstock_post2))
)
insert into keywords
    (name, job_post_id)
values
    ('SAS', (select id from overstock_post2)),
    ('SQL', (select id from overstock_post2)),
    ('SPSS', (select id from overstock_post2)),
    ('Microsoft Excel', (select id from overstock_post2));


-- overstock 3
with overstock_post3 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 5, 11, 1, 'Senior 3D Artist', 'Lehi, UT',
            'The Senior 3D Artist is an expert in creating photo-realistic renderings, with the leadership skills to direct the work of others. This position will drive the technical framework for how 3D renderings are created at Overstock, deciding when to produce imagery internally versus relying on vendors. This individual works closely with the CGI Art Director and CGI Producer to develop the processes, strategy and workflow for creating a high-volume pipeline of photo-realistic 3D renderings',
            current_date
        )
    returning id
),
os3resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Produce 3D renderings of product and lifestyle images, especially as the principle artist on high-profile or complex projects.', (select id from overstock_post3)),
        ('Work closely with the CGI Art Director to develop the look and feel for 3D renderings.', (select id from overstock_post3)),
        ('Work closely with the CGI Producer to refine the processes within the production workflow.', (select id from overstock_post3)),
        ('Work under the supervision of the Post-Production Manager to identify efficiencies and streamline processes when collaborating with other photo studio teams who are producing traditional photographic images.', (select id from overstock_post3)),
        ('Ensure that work done by internal and external artists meets technical standards, providing clear and constructive guidance as needed.', (select id from overstock_post3)),
        ('Perform other duties as required and assigned by manager and upper management.', (select id from overstock_post3))
),
os3qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('8+ years experience in a 3D art related industry.', (select id from overstock_post3)),
        ('Experience leading or mentoring others in creating photo-realistic renderings.', (select id from overstock_post3)),
        ('Expert level knowledge of 3ds Max, V-Ray, and Adobe Photoshop.', (select id from overstock_post3)),
        ('Expert level knowledge of 3D composition, lighting, camera, materials, and poly or NURBS modeling.', (select id from overstock_post3)),
        ('A keen aesthetic derived from traditional education or training in the visual arts.', (select id from overstock_post3)),
        ('Extreme attention to detail and organized workflow, while prioritizing multiple projects concurrently.', (select id from overstock_post3))
)
insert into keywords
    (name, job_post_id)
values
    ('V-Ray', (select id from overstock_post3)),
    ('Photoshop', (select id from overstock_post3)),
    ('Backburner', (select id from overstock_post3)),
    ('Microsoft Office', (select id from overstock_post3));


-- Overstock 4
with overstock_post4 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 5, 11, 1, 'Senior Software Developer', 'Lehi, UT',
            'Senior Software Developers are responsible for working on significant critical projects with limited or no supervision, must be able to take responsibility for all facets of the development process, participates in evaluation, change, and tracking of project requirements, plans and designs software components, services, and processes, fosters strong working relationships within IT and with business groups, mentors other developers, participates in work breakdown into tasks and provides work estimates, able to lead moderate, non-critical projects, have mastery in most core technologies and tools, understands all phases of the company software development life cycle, demonstrates initiative and integrity in all aspects of work, should demonstrate good analytical skills, has a basic understanding of overall company organization, has strong understanding of business partner organization and operations.',
            current_date
        )
    returning id
),
os4resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Strong Java SE skills, preferably through release 1.8.', (select id from overstock_post4)),
        ('Proficiency in Object Oriented design and programming.', (select id from overstock_post4)),
        ('Experience with Object Relational Mapping (ORM), especially Hibernate and JPA.', (select id from overstock_post4)),
        ('Experience using web presentation technologies such as JSP, JSF, Ajax, Javascript and HandleBars.', (select id from overstock_post4)),
        ('Experience using Javascript frameworks such as JQuery or Backbone.js or AngularJs.', (select id from overstock_post4)),
        ('Use of web container technologies, especially Tomcat and JAX-RS.', (select id from overstock_post4))
),
os4qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Minimum of 5+ years recent Software Development experience', (select id from overstock_post4)),
        ('Experience building web services, especially using the REST style.', (select id from overstock_post4)),
        ('Programming in Java, SQL, Javascript, HTML and CSS.', (select id from overstock_post4)),
        ('Development on Linux', (select id from overstock_post4))
)
insert into keywords
    (name, job_post_id)
values
    ('Java', (select id from overstock_post4)),
    ('Linux', (select id from overstock_post4)),
    ('Spring', (select id from overstock_post4)),
    ('Python', (select id from overstock_post4)),
    ('Maven', (select id from overstock_post4));



-----------------------------------------------------------------
--                   YOUNIQUE                                  --
-----------------------------------------------------------------
with younique_post1 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 6, 20, 1, 'VP, Sales', 'Lehi, UT',
            'The VP of Sales will be responsible for creating, optimizing, and maintaining superior Presenter and customer opportunities and engagements across a global organization. As a key member of the leadership team, this executive will be responsible for driving exponential growth in the rapidly-evolving cosmetic industry.  Strategic responsibilities will include maintaining and enhancing the culture within the organization while overseeing presenter and customer engagement.  This highly visible role should ultimately live the brand, mission and inspire others to do the same.',
            current_date
        )
    returning id
),
you1resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Oversee and manage sales organization with a global perspective.', (select id from younique_post1)),
        ('Ensure the culture of the entire team aligns with the mission, motto, and vision of the company.', (select id from younique_post1)),
        ('Recommends sales strategies for improvement based on market research and competitor analyses.', (select id from younique_post1)),
        ('Produce and Execute Sales KPI’s to the field.', (select id from younique_post1)),
        ('Manage the field forecasting process (trend lines), sales reporting process with a global perspective.', (select id from younique_post1)),
        ('Develop next generation sales reporting and sales tools for business partners (our Presenters).', (select id from younique_post1))
),
you1qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('12+ years actively selling, marketing and building Cosmetic brands across key global regions', (select id from younique_post1)),
        ('Understanding of direct selling process and multi-level marketing (MLM) compensation drivers', (select id from younique_post1)),
        ('Stong data analysis, reporting, research and problem solving skills', (select id from younique_post1)),
        ('Experience in strategic planning and execution', (select id from younique_post1)),
        ('Excellent presentation skills, highly visible role to live the brand, mission and inspire others to do the same.', (select id from younique_post1))
        
)
insert into keywords
    (name, job_post_id)
values
    ('Sales', (select id from younique_post1)),
    ('Marketing', (select id from younique_post1)),
    ('Business', (select id from younique_post1));

with younique_post2 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 6, 13, 1, 'Director - Privacy Counsel', 'Lehi, UT',
            'Younique is seeking an experienced and skilled Privacy counsel ready to bring his or her skills to a thriving and team-oriented in-house legal department in an agile and fast-growing company. This position will lead the legal component of Younique’s privacy, data security, and information management programs in collaboration with our legal team.',
            current_date
        )
    returning id
),
you2resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Provide strategic counsel on customer and employee data practices and policies, vendor and technology agreements, and product review for the company’s ecommerce and mobile strategies.', (select id from younique_post2)),
        ('Work closely with our IT, Development and User Experience teams to handle data protection issues proactively.', (select id from younique_post2)),
        ('Assess potential privacy and security risks, and applicable regulatory requirements, for Younique’s technologies, business model and strategies.', (select id from younique_post2)),
        ('Serve as primary legal contact for all inquiries, disputes or claims arising from the Company’s privacy and security activities.', (select id from younique_post2)),
        ('Perform legal evaluations of Company’s technology R&D and innovation.', (select id from younique_post2)),
        ('Coordinate with Coty’s in-house privacy counsel, especially regarding EU privacy/data security regulations.', (select id from younique_post2))
),
you2qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('5-10 years of relevant experience, particularly involving privacy and data security counseling either in-house or in private practice; related litigation experience a plus.', (select id from younique_post2)),
        ('Experience with US privacy laws, regulations, and industry guidelines, especially those relevant to social media and ecommerce. Hands-on experience with EU and other international privacy standards a significant plus.', (select id from younique_post2)),
        ('In-house legal/privacy experience preferred, but not required.', (select id from younique_post2)),
        ('Technology background preferred; undergraduate technology degree a plus.', (select id from younique_post2)),
        ('Contract and transactional experience.', (select id from younique_post2))
        
)
insert into keywords
    (name, job_post_id)
values
    ('Legal', (select id from younique_post2)),
    ('Law', (select id from younique_post2)),
    ('Privacy Counsel', (select id from younique_post2));


with younique_post3 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 6, 5, 1, 'Mid-level PHP Developer', 'Lehi, UT',
            'Younique is seeking a skilled PHP Developer to join our growing team.',
            current_date
        )
    returning id
),
you3resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Build e-commerce and database driven web applications.', (select id from younique_post3)),
        ('Work with PHP, MySQL, Javascript, and JQuery.', (select id from younique_post3)),
        ('Will be using CakePHP or other like PHP framework(s)', (select id from younique_post3)),
        ('Work with social networking APIs like Facebook.', (select id from younique_post3)),
        ('Work with responsive design and HTML5.', (select id from younique_post3)),
        ('Build a scalable, high-volume transactional web application.', (select id from younique_post3))
),
you3qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('2-5 years of professional experience', (select id from younique_post3)),
        ('Proficiency with front-end development and scripting including: HTML, JavaScript(jQuery), CSS, AJAX.', (select id from younique_post3)),
        ('Hands-on experience with web application architecture and relational database design', (select id from younique_post3)),
        ('Experience building sites to function cross-platform and cross-browser', (select id from younique_post3)),
        ('Experience using PHP MVC frameworks. Experience with Drupal and CakePHP is a huge plus.', (select id from younique_post3))
        
)
insert into keywords
    (name, job_post_id)
values
    ('PHP', (select id from younique_post3)),
    ('HTML5', (select id from younique_post3)),
    ('CakePHP', (select id from younique_post3)),
    ('Drupal', (select id from younique_post3));


-----------------------------------------------------------------
--                    AIRBNB                                   --
-----------------------------------------------------------------
with airbnb_post1 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 7, 5, 1, 'Software Engineer, Frontend', 'San Francisco, CA',
            'Frontend Engineers are an essential part of Airbnb''s Product Team.  Working closely with designers, we implement the user interface of our web app.  We build libraries and abstractions to make our lives easier, such as O2, our front-end toolkit.  We make the most of modern tools like React, ES6, and SASS, and we ensure our UIs work well on all screen sizes.  Some of us specialize in CSS, some in front-end infrastructure, but all of us are JavaScript pros and full-stack engineers',
            current_date
        )
    returning id
),
air1resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Collaborate with Experience Designers to iterate on the design and implementation of our product', (select id from airbnb_post1)),
        ('Work with Data Scientists and Backend Engineers to build features and ship experiments', (select id from airbnb_post1)),
        ('Build efficient and reusable front-end systems and abstractions', (select id from airbnb_post1)),
        ('Find and address performance issues', (select id from airbnb_post1)),
        ('Participate in design and code reviews', (select id from airbnb_post1)),
        ('Identify and communicate front-end best practices', (select id from airbnb_post1))
),
air1qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Expert knowledge of JavaScript', (select id from airbnb_post1)),
        ('Experience with modern JavaScript libraries and tooling', (select id from airbnb_post1)),
        ('Familiarity with server-side MVC web frameworks, such as Ruby on Rails or Django', (select id from airbnb_post1)),
        ('Commanding grasp of HTML, CSS, and related web technologies', (select id from airbnb_post1)),
        ('Strong Computer Science fundamentals', (select id from airbnb_post1)),
        ('Awareness of cross-browser compatibility issues and client-side performance considerations', (select id from airbnb_post1)),
        ('Demonstrated design and UX sensibilities', (select id from airbnb_post1))
)
insert into keywords
    (name, job_post_id)
values
    ('Engineer', (select id from airbnb_post1)),
    ('Technology', (select id from airbnb_post1)),
    ('React', (select id from airbnb_post1)),
    ('Frontend', (select id from airbnb_post1)),
    ('Ruby', (select id from airbnb_post1));

-- AIRBNB 2
with airbnb_post2 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 7, 5, 1, 'China Performance Marketing Lead', 'San Francisco, CA',
      'Airbnb is the world''s largest community-driven hospitality company. Every day, we connect thousands of guests and hosts online, leading to meaningful travel experiences in the real world. From treehouses to castles, Airbnb gives access to the most interesting places to stay around the world, putting you in the local scene and connecting you with unforgettable characters that become part of your story. Travel inspires the some of our best and most memorable stories, and travel with Airbnb facilitates even more interesting experiences and stories that are worth sharing.  Airbnb is looking for a talented Digital Performance Marketing  Manager to lead the Performance Marketing team in our Beijing office.  As the Digital Performance Marketing Manager for China, you will work closely with other functional counterparts and the Director of China Engineering to align on performance strategy to drive growth in China. Success in this role means  maximizing the value of Airbnb''s performance marketing investment in China by driving the high value users and growing our presence in China. The ideal candidate for this position will be quantitative, detail-oriented, and willing to get his or her hands dirty.',
          current_date
        )
    returning id
),
air2resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Lead a team of Specialists focused on running effective and efficient marketing campaigns for a diverse range of initiatives (e.g., revenue generation, user acquisition, and strategic investment) across various platforms', (select id from airbnb_post2)),
        ('Create, manage and optimize China SEM campaigns based on strategic initiatives and deliver on efficiency goals', (select id from airbnb_post2)),
        ('Collaborate with key functional partners (Finance, Data Science, Product/Engineering, Brand Marketing, etc.) to drive flawless in-market campaign execution.', (select id from airbnb_post2)),
        ('Identify new opportunities and strategies for China that will assist with scaling our acquisition and business growth efforts', (select id from airbnb_post2)),
        ('Assist in the development and rollout of best practices to streamline workflow and experimentation and ensure learnings are shared within the China performance marketing team', (select id from airbnb_post2)),
        ('Foster a sense of team in a culturally diverse office', (select id from airbnb_post2))
),
air2qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('Passion for all things Airbnb. Experience hosting on the site is a plus.', (select id from airbnb_post2)),
        ('8+ years of tactical performance marketing experience with a strong focus on SEM and other performance marketing channels (e.g. Baidu, Qihoo, WeChat)', (select id from airbnb_post2)),
        ('Strong understanding of the app acquisition landscape and experience driving high ROI growth on mobile', (select id from airbnb_post2)),
        ('In-depth knowledge and understanding of Chinese ad platforms with a proven track record of leading innovative, effective marketing strategies (e.g. structuring A/B tests, generating out-of-the-box solutions to help increase conversions, etc.)', (select id from airbnb_post2)),
        ('Experience with ad tracking and ad serving platforms within China to drive product and data needs to measure performance. Familiarity with multi-touch attribution work is also a plus', (select id from airbnb_post2)),
        ('Must be highly proficient in Excel (pivot tables, graphs, formulas, etc.). Proficiency in SQL a plus.', (select id from airbnb_post2)),
        ('Fluency in English and Mandarin. Must be able to work in Beijing.', (select id from airbnb_post2))
)
insert into keywords
    (name, job_post_id)
values
    ('Digital Marketing', (select id from airbnb_post2)),
    ('Technology', (select id from airbnb_post2)),
    ('China', (select id from airbnb_post2)),
    ('TeamLead', (select id from airbnb_post2)),
    ('Performance', (select id from airbnb_post2));

with airbnb_post3 as (
    insert into job_postings
        (id, company_id, industry_id, job_type_id, title, location, job_description, date_posted)
    values
        (
            DEFAULT, 7, 5, 1, 'Design Technologist', 'San Francisco, CA',
      'We are seeking a Design Technologist who will support our team in advancing Airbnb''s digital product. In this role you will be working with designers and engineers of all levels on a wide variety of projects from building high-fidelity prototypes to creating new tools and integrations needed to help solve our most complex problems efficiently and effectively.',
          current_date
        )
    returning id
),
air3resp as (
    insert into responsibilities
        (resp_text, job_post_id)
    values
        ('Actively participate in concept development and design ideation as part of a small team.', (select id from airbnb_post3)),
        ('Ability to rapidly build and iterate on polished, high-fidelity prototypes that express design intent, using the best and most appropriate tools and techniques for the task.', (select id from airbnb_post3)),
        ('Develop functional prototypes to prove and sell concepts to development teams and senior leadership.', (select id from airbnb_post3)),
        ('Partner with Designers to discover, define and deliver tools and systems to optimize the design workflow.', (select id from airbnb_post3)),
        ('Help develop, implement and evangelize tools and process that allow design and  development to work closely together on rapid iteration of design concepts.', (select id from airbnb_post3))
),
air3qual as (
    insert into qualifications
        (qual_text, job_post_id)
    values
        ('A proficiency with front end-programming (web, desktop, mobile, native)', (select id from airbnb_post3)),
        ('Working knowledge of Swift (or similar) and ability to create click through prototypes with functional components', (select id from airbnb_post3)),
        ('Good understanding of various platforms and technologies (HTML5/CSS3/Javascript, Java, Python, C++, and others) to create functional tools, prototypes and proofs-of-concept.', (select id from airbnb_post3)),
    ('Able to work quickly and iteratively with both design and engineering on UI ideas until a final design is achieved', (select id from airbnb_post3)),
    ('Excellent collaboration skills', (select id from airbnb_post3))
    
)
insert into keywords
    (name, job_post_id)
values
    ('UX', (select id from airbnb_post3)),
    ('Fulltime', (select id from airbnb_post3)),
    ('Airbnb', (select id from airbnb_post3)),
    ('Design', (select id from airbnb_post3)),
    ('Technology', (select id from airbnb_post3));



























insert into saved_jobs
	(user_id, job_post_id)
values
	(1, 2),
	(1, 4);


with resume1 as (
	insert into resumes
		(id, user_id, location, about_me, email, phone, linkedin_url, portfolio_url)
	values
		(default, 1, 
			'Gainesville, FL',
			'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic neque mollitia alias eos iure aperiam fugit placeat dicta molestias, soluta deleniti, eligendi velit. Laborum ut eius, excepturi, optio blanditiis incidunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati iure ipsa, aut, ipsum eum, corrupti ullam fuga odit soluta blanditiis dolores voluptatibus alias repellendus, eos similique a? Neque, ipsa, commodi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum repellat velit, blanditiis voluptate earum ipsum ducimus sed, id laboriosam magni voluptatem error ullam nulla eum incidunt, labore esse maxime alias!',
			'cmw.wilson88@gmail.com',
			'(555) 567-8901',
			'https://www.linkedin.com/in/christopher_wilson88', 'https://www.google.com') 
	returning id
),
resume1_exp as (
	insert into work_experiences
		(title, company, from_date, to_date, description, resume_id)
	values
		(
			'Web Developer', 'DevMountain', '6/2017', 'Present',
			'Utilized the newest technologies to create amazing web applications.  Specialities include ReactJS, VueJS, NodeJS, PostgreSQL, and MongoDB.  Worked on several projects relating to the curriculum at DevMountain and worked with students to help their growth',
			(select id from resume1)
		),
		(
			'School Psychologist', 'Putnam County School Board', '8/2015', '6/2017',
			'Small group and individual counseling.  Academic, intellectual, and social-emotional assessments',
			(select id from resume1)
		)
),
resume1_edu1 as (
	insert into education
		(school, degree, study_field, from_date, to_date, description, resume_id)
	values
		(
			'DevMountain', 'Junior Web Developer', 'Web Development', '6/2017', '9/2017',
			'Studied Full Stack development focusing on ReactJS, NodeJS, Express, and PostgreSQL',
			(select id from resume1)
		),
		(
			'University of Florida', 'Education Specialist (Ed.S.)', 'School Psychology', '8/2012', '5/2015',
			'Graduate studies focusing on psychoeducational assessments, small group and individual counseling, and crisis intervention',
			(select id from resume1)
		),
		(
			'Florida Gulf Coast University', 'Bachelor of Arts', 'Psychology', '8/2008', '4/2012',
			'Undergraduate studies focusing on clinical psychology, health psychology, and pediatric psychology',
			(select id from resume1)
		)
),
resume1_skills as (
	insert into skills
		(name, resume_id)
	values 
		('ReactJS', (select id from resume1)),
		('VueJS', (select id from resume1)),
		('NodeJS', (select id from resume1)),
		('Organization', (select id from resume1)),
		('Time Management', (select id from resume1)),
		('Communication', (select id from resume1)),
		('Leadership', (select id from resume1))
)
select * from resume1;

with resume2 as (
    insert into resumes
        (id, user_id, location, about_me, email, phone, linkedin_url, portfolio_url)
    values
        (default, 2, 
        	'Minneapolis, MN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, fugit! Ad recusandae facilis in architecto maxime, culpa at eos eligendi esse enim error dolores debitis dolor. Reiciendis velit eius neque!',
        	'ashley@me.com', '(555) 555 - 555', 'https://www.linkedin.com/in/ashleyschuette/', 'http://www.aschuette.com/') 
    returning id
),
resume2_exp as (
    insert into work_experiences
        (title, company, from_date, to_date, description, resume_id)
    values
        (
            'Full Stack Web Developer', 'DevMountain', '6/2017', 'Present',
            'Created many full-stack applications using the newest technologies. Some of the technologies include ReactJS, VueJS, NodeJS, PostgreSQL, and Sass.',
            (select id from resume2)
        ),
        (
            'SEO Associate', 'Top Source Medias', '6/2016', '6/2017',
            'Ranked and promoted websites on major search engines. Created and designed interal company newsletter monthly. Researched and used tools for best SEO practice.',
            (select id from resume2)
        )
),
resume2_edu1 as (
    insert into education
        (school, degree, study_field, from_date, to_date, description, resume_id)
    values
        (
            'DevMountain', 'Full Stack Web Developer', 'Web Development', '6/2017', '9/2017',
            'Studied Full Stack development focusing on ReactJS, NodeJS, Express, and PostgreSQL',
            (select id from resume2)
        ),
        (
            'St. Cloud State University', 'Bachelor of Science', 'Business Marketing', '8/2012', '5/2016',
            'Undergraduate studies focusing on business, market research and professional networking',
            (select id from resume2)
        )
),
resume2_skills as (
    insert into skills
        (name, resume_id)
    values 
        ('ReactJS', (select id from resume2)),
        ('VueJS', (select id from resume2)),
        ('NodeJS', (select id from resume2)),
        ('Sass', (select id from resume2)),
        ('Sel-motivation', (select id from resume2)),
        ('Detail-oriented', (select id from resume2)),
        ('Adaptability', (select id from resume2))
)
select * from resume2;

with resume3 as (
    insert into resumes
        (id, user_id, location, about_me, email, phone, linkedin_url, portfolio_url)
    values
        (default, 3, 'San Francisco, CA', 
        	'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, optio natus deleniti illum eius quo dignissimos accusantium eos a numquam! Tempora aperiam dolorem voluptates accusantium minima, eum, optio voluptatum unde!  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, vero harum, architecto eaque quaerat nihil soluta quisquam hic fugiat incidunt suscipit sequi laborum maiores error enim tenetur fugit itaque iusto!', 
        	'me@logantruong.com', '(555) 543-2109','https://www.linkedin.com/in/logan-truong', 'https://www.logantruong.com') 
    returning id
),
resume3_exp as (
    insert into work_experiences
        (title, company, from_date, to_date, description, resume_id)
    values
        (
            'Web Developer', 'DevMountain', '6/2017', 'Present',
            'Learned full stack web developing skills including HTML/CSS, Javascript, React, Angular, jQuery, Node.js, Express, PostreSQL and RESTful API''s.',
            (select id from resume3)
        ),
        (
            'Executive Assistance', 'K & L Auto', '12/2016', '6/2017',
            'Coordinated executive communications, including taking calls, responding to emails and meeting with clients',
            (select id from resume3)
        )
),
resume3_edu1 as (
    insert into education
        (school, degree, study_field, from_date, to_date, description, resume_id)
    values
        (
            'DevMountain', 'Junior Web Developer', 'Web Development', '6/2017', '9/2017',
            'Studied Full Stack development focusing on ReactJS, NodeJS, Express, and PostgreSQL',
            (select id from resume3)
        ),
        (
            'University of Hawaii', 'Bachelor of Business Administration', 'Finance', '8/2014', '6/2016',
            'Undergraduate studies focusing on Business Administration',
            (select id from resume3)
        )
),
resume3_skills as (
    insert into skills
        (name, resume_id)
    values 
        ('ReactJS', (select id from resume3)),
        ('VueJS', (select id from resume3)),
        ('NodeJS', (select id from resume3)),
        ('HTML', (select id from resume3)),
        ('CSS', (select id from resume3)),
        ('Outgoing', (select id from resume3)),
        ('Creative', (select id from resume3))
)
select * from resume3;

insert into submitted_resumes
	(resume_id, job_post_id)
values 
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 7),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 15),
	(1, 17),
	(1, 18),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 5),
	(2, 9),
	(2, 10),
	(2, 8),
	(2, 15),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 5),
	(3, 8),
	(3, 9),
	(3, 10),
	(3, 14),
	(3, 15),
	(3, 16),
	(3, 17);


