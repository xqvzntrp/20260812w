CREATE OR REPLACE VIEW "view13_internal_dependency" AS
SELECT
    d.group_id,
    d.dependent_definition_id,
    d.dependency_definition_id
FROM "view02_dependency" d
JOIN "view07_internal_definition" a
    ON d.group_id = a.group_id
   AND d.dependent_definition_id = a.definition_id
JOIN "view07_internal_definition" b
    ON d.group_id = b.group_id
   AND d.dependency_definition_id = b.definition_id;

-- view11_leaf_dependency
--     source-side edges
-- view12_output_dependency
--     output-side edges
-- view13_internal_dependency
--     internal-to-internal edges
