CREATE OR REPLACE VIEW "view24_group_shape_count" AS
SELECT
    group_shape,
    COUNT(*) AS group_count
FROM "view23_group_shape"
GROUP BY
    group_shape;
