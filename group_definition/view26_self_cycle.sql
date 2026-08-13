CREATE OR REPLACE VIEW "view26_self_cycle" AS
SELECT
    group_id,
    dependent_definition_id AS definition_id
FROM "view02_dependency"
WHERE dependent_definition_id = dependency_definition_id;
