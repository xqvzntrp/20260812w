CREATE OR REPLACE VIEW "view14_boundary_definition" AS
SELECT
    group_id,
    definition_id,
    'SOURCE' AS boundary_type
FROM "view06_source_definition"

UNION

SELECT
    group_id,
    definition_id,
    'OUTPUT' AS boundary_type
FROM "view03_output_definition";
