CREATE OR REPLACE VIEW "view17_group_boundary_count" AS
SELECT
    group_id,
    boundary_type,
    COUNT(*) AS boundary_count
FROM "view14_boundary_definition"
GROUP BY
    group_id,
    boundary_type;
