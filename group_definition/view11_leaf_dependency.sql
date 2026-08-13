CREATE OR REPLACE VIEW "view11_leaf_dependency" AS
SELECT
    d.group_id,
    d.dependent_definition_id,
    d.dependency_definition_id
FROM "view02_dependency" d
JOIN "view06_source_definition" s
    ON d.group_id = s.group_id
   AND d.dependency_definition_id = s.definition_id;
