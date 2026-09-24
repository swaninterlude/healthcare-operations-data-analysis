-- Healthcare Operations Data Analysis
-- Synthetic dataset created for portfolio purposes

-- 1. Total number of cases
SELECT
    COUNT(*) AS total_cases
FROM synthetic_healthcare_cases;


-- 2. Case volume by case type
SELECT
    case_type,
    COUNT(*) AS case_count
FROM synthetic_healthcare_cases
GROUP BY case_type
ORDER BY case_count DESC;


-- 3. Average processing time by case type
SELECT
    case_type,
    COUNT(*) AS case_count,
    ROUND(AVG(processing_days), 2) AS avg_processing_days
FROM synthetic_healthcare_cases
GROUP BY case_type
ORDER BY avg_processing_days DESC;


-- 4. Documentation issue rate
SELECT
    COUNT(*) AS total_cases,
    SUM(
        CASE
            WHEN documentation_issue = 'Yes' THEN 1
            ELSE 0
        END
    ) AS cases_with_issues,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN documentation_issue = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS documentation_issue_rate
FROM synthetic_healthcare_cases;


-- 5. Processing time by documentation issue
SELECT
    documentation_issue,
    COUNT(*) AS case_count,
    ROUND(AVG(processing_days), 2) AS avg_processing_days
FROM synthetic_healthcare_cases
GROUP BY documentation_issue;


-- 6. Case volume by region
SELECT
    region,
    COUNT(*) AS case_count
FROM synthetic_healthcare_cases
GROUP BY region
ORDER BY case_count DESC;


-- 7. Regional processing performance
SELECT
    region,
    COUNT(*) AS case_count,
    ROUND(AVG(processing_days), 2) AS avg_processing_days
FROM synthetic_healthcare_cases
GROUP BY region
ORDER BY avg_processing_days DESC;


-- 8. Outcome distribution
SELECT
    outcome,
    COUNT(*) AS case_count
FROM synthetic_healthcare_cases
GROUP BY outcome
ORDER BY case_count DESC;
