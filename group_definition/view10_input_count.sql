CREATE OR REPLACE VIEW "view10_input_count" AS
SELECT
    group_id,
    dependency_definition_id AS definition_id,
    COUNT(*) AS input_count
FROM "view02_dependency"
GROUP BY
    group_id,
    dependency_definition_id;
