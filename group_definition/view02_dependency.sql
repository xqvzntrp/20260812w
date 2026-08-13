CREATE OR REPLACE VIEW "view02_dependency" AS
SELECT
    a.group_id,
    a.definition_id AS dependent_definition_id,
    b.definition_id AS dependency_definition_id
FROM "view01_group_definition" a
JOIN "view01_group_definition" b
    ON a.input_expression = b.definition_id;

-- a is the definition being evaluated.
-- b is another definition in the same view.
-- join them when a.input_expression equals b.definition_id.
