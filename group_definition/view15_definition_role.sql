CREATE OR REPLACE VIEW "view15_definition_role" AS
SELECT
    v.group_id,
    v.definition_id,
    v.definition_name,
    CASE
        WHEN i.definition_id IS NOT NULL THEN 'ISOLATED'
        WHEN n.definition_id IS NOT NULL THEN 'INTERNAL'
        WHEN s.definition_id IS NOT NULL THEN 'SOURCE'
        WHEN o.definition_id IS NOT NULL THEN 'OUTPUT'
    END AS definition_role
FROM "view01_group_definition" v
LEFT JOIN "view08_isolated_definition" i
    ON v.group_id = i.group_id
   AND v.definition_id = i.definition_id
LEFT JOIN "view07_internal_definition" n
    ON v.group_id = n.group_id
   AND v.definition_id = n.definition_id
LEFT JOIN "view06_source_definition" s
    ON v.group_id = s.group_id
   AND v.definition_id = s.definition_id
LEFT JOIN "view03_output_definition" o
    ON v.group_id = o.group_id
   AND v.definition_id = o.definition_id;
