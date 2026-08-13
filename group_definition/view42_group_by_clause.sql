CREATE OR REPLACE VIEW "view42_group_by_clause" AS
SELECT
    group_id,
    definition_id,
    CASE
        WHEN group_by IS NOT NULL
        THEN 'GROUP BY ' || group_by
        ELSE NULL
    END AS group_by_clause
FROM "view34_compilable_output_definition";
