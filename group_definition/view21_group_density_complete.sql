CREATE OR REPLACE VIEW "view21_group_density_complete" AS
SELECT
    d.group_id,
    d.definition_count,
    COALESCE(e.dependency_count, 0) AS dependency_count,
    CAST(COALESCE(e.dependency_count, 0) AS REAL)
        / d.definition_count AS dependency_density
FROM "view19_group_definition_count" d
LEFT JOIN "view18_group_dependency_count" e
    ON d.group_id = e.group_id;
