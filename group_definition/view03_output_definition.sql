CREATE OR REPLACE VIEW "view03_output_definition" AS
SELECT
    v.group_id,
    v.definition_id,
    v.definition_name
FROM "view01_group_definition" v
LEFT JOIN "view02_dependency" d
    ON v.group_id = d.group_id
   AND v.definition_id = d.dependency_definition_id
WHERE d.dependency_definition_id IS NULL;

-- Left Join + Null to find rows with no match.
-- If the graph is:
-- A depends on B
-- B depends on C
-- then:
-- A
-- is not used as a dependency by any other definition, so view03_output_definition returns A.
-- That gives you:
-- view01_group_definition
-- view02_dependency
-- view03_output_definition
-- and each view establishes a new relational fact rather than assigning runtime order.

-- view01_group_definition
--     resolves the three base tables into one useful relation
-- view02_dependency
--     uses a self-join to establish dependency edges
-- view03_output_definition
--     uses LEFT JOIN + NULL to find definitions nothing else depends on
