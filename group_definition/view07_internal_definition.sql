CREATE OR REPLACE VIEW "view07_internal_definition" AS
SELECT DISTINCT
    d1.group_id,
    d1.dependent_definition_id AS definition_id
FROM "view02_dependency" d1
JOIN "view02_dependency" d2
    ON d1.group_id = d2.group_id
   AND d1.dependent_definition_id = d2.dependency_definition_id;

-- If:
-- A depends on B
-- B depends on C
-- then:
-- B
-- is internal because:
-- B depends on C
-- A depends on B
-- So now you have three useful structural classes:
-- source
--     depends on nothing
-- internal
--     depends on something
--     and something depends on it
-- output
--     nothing depends on it


-- view01_group_definition
--     resolved compiler relation
-- view02_dependency
--     dependency edges
-- view03_output_definition
--     definitions nothing else depends on
-- view04_dependent_definition
--     definitions that depend on something
-- view05_input_definition
--     definitions used as dependencies
-- view06_source_definition
--     definitions that depend on nothing
-- view07_internal_definition
--     definitions that are both dependent and depended upon
