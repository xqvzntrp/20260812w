CREATE OR REPLACE VIEW "view38_select_expression" AS
SELECT
    group_id,
    definition_id,
    CASE
        WHEN aggregation IS NOT NULL
        THEN aggregation || '(' || expression || ')'
        ELSE expression
    END AS select_expression
FROM "view34_compilable_output_definition";
