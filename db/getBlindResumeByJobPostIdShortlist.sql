select r.id resume_id, jp.id job_post_id,
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
join job_postings jp on sr.job_post_id = jp.id
join companies c on c.id = jp.company_id
where jp.id = $1 and sr.shortlist = true;