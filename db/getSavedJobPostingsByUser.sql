select c.name company, c.city, c.state, jp.title, i.name industry, jt.name job_type, jp.job_description, jp.responsibilities, jp.qualifications, 
            (
                select array_to_json(array_agg(d))
                from (
                    select k.name from keywords k
                    where k.job_post_id = jp.id
                    order by k.name
                ) d
            ) as job_keywords,
            jp.date_posted
            from saved_jobs sj
            join users u on u.id = sj.user_id
            join job_postings jp on jp.id = sj.job_post_id
            join companies c on c.id = jp.company_id
            join industries i on i.id = jp.industry_id
            join job_types jt on jt.id = jp.job_type_id
            where u.id = $1;