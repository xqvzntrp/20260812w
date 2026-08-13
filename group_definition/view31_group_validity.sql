CREATE OR REPLACE VIEW "view31_group_validity" AS
SELECT
    g.group_id,
    CASE
        WHEN c.group_id IS NOT NULL THEN 'INVALID_CYCLE'
        ELSE 'VALID_ACYCLIC'
    END AS validity
FROM "group" g
LEFT JOIN "view29_group_cycle" c
    ON g.group_id = c.group_id;
