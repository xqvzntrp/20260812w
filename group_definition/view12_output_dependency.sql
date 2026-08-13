CREATE OR REPLACE VIEW "view12_output_dependency" AS
SELECT
    d.group_id,
    d.dependent_definition_id,
    d.dependency_definition_id
FROM "view02_dependency" d
JOIN "view03_output_definition" o
    ON d.group_id = o.group_id
   AND d.dependent_definition_id = o.definition_id;


