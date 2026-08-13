CREATE OR REPLACE VIEW "view34_compilable_output_definition" AS
SELECT
    c.group_id,
    c.definition_id,
    c.definition_name,
    c.group_name,
    c.group_by,
    c.input_expression,
    c.aggregation,
    c.condition,
    c.expression
FROM "view33_compilable_definition" c
JOIN "view03_output_definition" o
    ON c.group_id = o.group_id
   AND c.definition_id = o.definition_id;
