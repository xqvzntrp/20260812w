CREATE OR REPLACE VIEW "view33_compilable_definition" AS
SELECT
    v.group_id,
    v.definition_id,
    v.definition_name,
    v.group_name,
    v.group_by,
    v.input_expression,
    v.aggregation,
    v.condition,
    v.expression
FROM "view01_group_definition" v
JOIN "view32_compilable_group" g
    ON v.group_id = g.group_id;
