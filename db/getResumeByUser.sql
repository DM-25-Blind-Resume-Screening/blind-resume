select *,
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
    ) as resume_skills
    from resumes r
    where r.user_id = $1;