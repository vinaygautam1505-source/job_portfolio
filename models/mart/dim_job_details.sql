SELECT 
  JOB_TITLE_ID,
  JOB_TITLE,
  JOB_DESCRIPTION
FROM {{ ref('stg_job_portfolio') }}
