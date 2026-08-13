CREATE OR REPLACE VIEW "view06_source_definition" AS
SELECT
    v.group_id,
    v.definition_id,
    v.definition_name
FROM "view01_group_definition" v
LEFT JOIN "view02_dependency" d
    ON v.group_id = d.group_id
   AND v.definition_id = d.dependent_definition_id
WHERE d.dependent_definition_id IS NULL;


-- view03_output_definition
--     nothing depends on it
-- view06_source_definition
--     it depends on nothing
