CREATE OR REPLACE VIEW "view01_group_definition" AS
SELECT
    g.group_id,
    g.group_name,
    g.group_by,
    d.definition_id,
    d.definition_name,
    gd.input_expression,
    gd.aggregation,
    gd.condition,
    gd.expression
FROM "group_definition" gd
JOIN "group" g
    ON gd.group_id = g.group_id
JOIN "definition" d
    ON gd.definition_id = d.definition_id;
