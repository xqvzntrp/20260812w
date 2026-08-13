CREATE OR REPLACE VIEW "view18_group_dependency_count" AS
SELECT
    group_id,
    COUNT(*) AS dependency_count
FROM "view02_dependency"
GROUP BY
    group_id;
