CREATE OR REPLACE VIEW "view35_compiled_statement" AS
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
    ) AS compiled_statement
FROM "view34_compilable_output_definition";
