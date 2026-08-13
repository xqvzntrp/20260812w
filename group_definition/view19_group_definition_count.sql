CREATE OR REPLACE VIEW "view19_group_definition_count" AS
SELECT
    group_id,
    COUNT(*) AS definition_count
FROM "view01_group_definition"
GROUP BY
    group_id;
