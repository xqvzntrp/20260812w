CREATE OR REPLACE VIEW "view20_group_density" AS
SELECT
    d.group_id,
    d.definition_count,
    e.dependency_count,
    CAST(e.dependency_count AS REAL) / d.definition_count AS dependency_density
FROM "view19_group_definition_count" d
JOIN "view18_group_dependency_count" e
    ON d.group_id = e.group_id;
