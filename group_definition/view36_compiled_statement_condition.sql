CREATE OR REPLACE VIEW "view36_compiled_statement_condition" AS
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
    ) AS compiled_statement
FROM "view34_compilable_output_definition";
