CREATE OR REPLACE VIEW "view09_dependency_count" AS
SELECT
    group_id,
    dependent_definition_id AS definition_id,
    COUNT(*) AS dependency_count
FROM "view02_dependency"
GROUP BY
    group_id,
    dependent_definition_id;


