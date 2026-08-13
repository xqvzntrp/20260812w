CREATE OR REPLACE VIEW "view05_input_definition" AS
SELECT DISTINCT
    group_id,
    dependency_definition_id AS definition_id
FROM "view02_dependency";


-- view04_dependent_definition
--     definition → depends on something
-- view05_input_definition
--     definition → is depended on by something
