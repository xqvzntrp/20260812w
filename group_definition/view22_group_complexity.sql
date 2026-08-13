CREATE OR REPLACE VIEW "view22_group_complexity" AS
SELECT
    d.group_id,
    d.definition_count,
    COALESCE(e.dependency_count, 0) AS dependency_count,
    COALESCE(r.source_count, 0) AS source_count,
    COALESCE(r.output_count, 0) AS output_count,
    COALESCE(r.internal_count, 0) AS internal_count,
    COALESCE(r.isolated_count, 0) AS isolated_count
FROM "view19_group_definition_count" d
LEFT JOIN "view18_group_dependency_count" e
    ON d.group_id = e.group_id
LEFT JOIN (
    SELECT
        group_id,
        SUM(CASE WHEN definition_role = 'SOURCE' THEN definition_count ELSE 0 END) AS source_count,
        SUM(CASE WHEN definition_role = 'OUTPUT' THEN definition_count ELSE 0 END) AS output_count,
        SUM(CASE WHEN definition_role = 'INTERNAL' THEN definition_count ELSE 0 END) AS internal_count,
        SUM(CASE WHEN definition_role = 'ISOLATED' THEN definition_count ELSE 0 END) AS isolated_count
    FROM "view16_group_role_count"
    GROUP BY group_id
) r
    ON d.group_id = r.group_id;
