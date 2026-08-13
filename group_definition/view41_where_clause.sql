CREATE OR REPLACE VIEW "view41_where_clause" AS
SELECT
    group_id,
    definition_id,
    CASE
        WHEN condition IS NOT NULL
        THEN 'WHERE ' || condition
        ELSE NULL
    END AS where_clause
FROM "view34_compilable_output_definition";
