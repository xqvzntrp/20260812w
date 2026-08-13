CREATE OR REPLACE VIEW "view30_acyclic_group" AS
SELECT
    g.group_id
FROM "group" g
LEFT JOIN "view29_group_cycle" c
    ON g.group_id = c.group_id
WHERE c.group_id IS NULL;
