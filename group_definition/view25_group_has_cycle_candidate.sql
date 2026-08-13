CREATE OR REPLACE VIEW "view25_two_node_cycle" AS
SELECT DISTINCT
    a.group_id,
    a.dependent_definition_id AS definition_a,
    a.dependency_definition_id AS definition_b
FROM "view02_dependency" a
JOIN "view02_dependency" b
    ON a.group_id = b.group_id
   AND a.dependent_definition_id = b.dependency_definition_id
   AND a.dependency_definition_id = b.dependent_definition_id;
