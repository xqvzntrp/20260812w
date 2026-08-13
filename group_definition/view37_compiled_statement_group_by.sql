CREATE OR REPLACE VIEW "view37_compiled_statement_group_by" AS
SELECT
    group_id,
    definition_id,
    (
        'SELECT '
        || expression
        || ' AS '
        || definition_name
        || ' FROM '
        || input_expression
        ||
        CASE
            WHEN condition IS NOT NULL
            THEN ' WHERE ' || condition
            ELSE ''
        END
        ||
        CASE
            WHEN group_by IS NOT NULL
            THEN ' GROUP BY ' || group_by
            ELSE ''
        END
    ) AS compiled_statement
FROM "view34_compilable_output_definition";
