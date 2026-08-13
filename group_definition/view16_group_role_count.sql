CREATE OR REPLACE VIEW "view16_group_role_count" AS
SELECT
    group_id,
    definition_role,
    COUNT(*) AS definition_count
FROM "view15_definition_role"
GROUP BY
    group_id,
    definition_role;
