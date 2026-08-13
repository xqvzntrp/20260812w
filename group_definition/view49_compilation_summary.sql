CREATE OR REPLACE VIEW "view49_compilation_summary" AS
SELECT
    COUNT(*) AS group_count,
    SUM(
        CASE
            WHEN compilation_status = 'COMPILED' THEN 1
            ELSE 0
        END
    ) AS compiled_group_count,
    SUM(
        CASE
            WHEN compilation_status = 'FAILED' THEN 1
            ELSE 0
        END
    ) AS failed_group_count
FROM "view48_group_compilation_status";
