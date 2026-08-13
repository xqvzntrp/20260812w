CREATE OR REPLACE VIEW "view40_from_clause" AS
SELECT
    group_id,
    definition_id,
    (
        'FROM '
        || input_expression
    ) AS from_clause
FROM "view34_compilable_output_definition";
