CREATE OR REPLACE VIEW "view08_isolated_definition" AS
SELECT
    v.group_id,
    v.definition_id,
    v.definition_name
FROM "view01_group_definition" v
LEFT JOIN "view04_dependent_definition" d
    ON v.group_id = d.group_id
   AND v.definition_id = d.definition_id
LEFT JOIN "view05_input_definition" i
    ON v.group_id = i.group_id
   AND v.definition_id = i.definition_id
WHERE d.definition_id IS NULL
  AND i.definition_id IS NULL;



-- That teaches a nice pattern: combine two negative membership tests.


-- source      depends on nothing
-- output      nothing depends on it
-- internal    both
-- isolated    neither
