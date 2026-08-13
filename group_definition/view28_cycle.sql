CREATE OR REPLACE VIEW "view28_cycle" AS
SELECT DISTINCT
    group_id,
    dependent_definition_id AS definition_id
FROM "view27_recursive_dependency"
WHERE dependent_definition_id = dependency_definition_id;
