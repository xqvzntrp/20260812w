CREATE OR REPLACE VIEW "view50_model_compilation_status" AS
SELECT
    CASE
        WHEN failed_group_count > 0 THEN 'FAILED'
        ELSE 'COMPILED'
    END AS model_compilation_status
FROM "view49_compilation_summary";
