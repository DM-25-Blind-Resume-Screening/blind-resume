select r.id resume_id, jp.id job_post_id, u.first_name, u.last_name, u.picture, r.about_me, r.email, r.phone, r.linkedin_url, r.portfolio_url,
    (
        select array_to_json(array_agg(b))
        from (
            select * from work_experiences we
            where we.resume_id = r.id
            order by we.id
        ) b
    ) as resume_work_experience,
    (
        select array_to_json(array_agg(c))
        from (
            select * from education e
            where e.resume_id = r.id
            order by e.id
        ) c
    ) as resume_education,
    (
        select array_to_json(array_agg(d))
        from (
            select s.name from skills s
            where s.resume_id = r.id
            order by s.name
        ) d
    ) as resume_skills,
    sr.shortlist, sr.interview_candidate 
from submitted_resumes sr
join resumes r on sr.resume_id = r.id
join users u on r.user_id = u.id
join job_postings jp on sr.job_post_id = jp.id
join companies c on c.id = jp.company_id
where jp.id = $1 and sr.interview_candidate = true;