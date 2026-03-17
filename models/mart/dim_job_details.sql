SELECT 
  ROW_NUMBER() OVER (ORDER BY job_title) AS job_title_id,
  JOB_TITLE,
  JOB_DESCRIPTION
FROM (
  SELECT DISTINCT JOB_TITLE, JOB_DESCRIPTION 
  FROM {{ ref('stg_job_portfolio') }}
)
