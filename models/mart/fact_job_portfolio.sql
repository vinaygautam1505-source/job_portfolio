SELECT
j.JOB_TITLE_ID,
c.COMPANY_ID,
l.COMPANY_LOCATION_ID,
j.SALARY_MIN,
j.SALARY_MAX,
s.JOB_RATING
FROM {{ ref('stg_job_portfolio') }} s
JOIN  {{ ref('dim_job_details') }} j
ON s.JOB_TITLE_ID = j.JOB_TITLE_ID

JOIN {{ ref('dim_company_profile') }} c
ON s.COMPANY_NAME = c.COMPANY_NAME

JOIN {{ ref('dim_location') }} l
ON s.COMPANY_LOCATION = l.COMPANY_LOCATION
