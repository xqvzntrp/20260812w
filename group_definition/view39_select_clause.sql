CREATE OR REPLACE VIEW "view39_select_clause" AS
SELECT
    o.group_id,
    o.definition_id,
    (
        'SELECT '
        || s.select_expression
        || ' AS '
        || o.definition_name
    ) AS select_clause
FROM "view34_compilable_output_definition" o
JOIN "view38_select_expression" s
    ON o.group_id = s.group_id
   AND o.definition_id = s.definition_id;
