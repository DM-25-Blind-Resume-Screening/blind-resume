select c.name company, c.city, c.logo_url, c.state, jp.id, jp.title, i.name industry, jt.name job_type, 
        jp.job_description,
    (
        select array_to_json(array_agg(b))
        from (
            select * from responsibilities rs 
            where rs.job_post_id = jp.id
            order by rs.id
        ) b
    ) as responsibilities,
    (
        select array_to_json(array_agg(c))
        from ( 
            select * from qualifications q
            where q.job_post_id = jp.id
            order by q.id
        ) c
    ) as qualifications,
    (
        select array_to_json(array_agg(d))
        from (
            select k.name from keywords k
            where k.job_post_id = jp.id
            order by k.name
        ) d
    ) as job_keywords,
    jp.date_posted,
    (
        select count(id) from submitted_resumes sr
        where sr.job_post_id = jp.id and sr.shortlist = false and sr.interview_candidate = false
    ) as applications_count,
    (
        select count(id) from submitted_resumes sr
        where sr.job_post_id = jp.id and sr.shortlist = true and sr.interview_candidate = false
    ) as shortlist_count,
    (
        select count(id) from submitted_resumes sr
        where sr.job_post_id = jp.id and sr.interview_candidate = true
    ) as candidate_count
    from job_postings jp
    join companies c on c.id = jp.company_id
    join industries i on i.id = jp.industry_id
    join job_types jt on jt.id = jp.job_type_id
    where c.id = $1 and jp.id = $2