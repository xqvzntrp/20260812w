CREATE OR REPLACE VIEW "view48_group_compilation_status" AS
SELECT
    g.group_id,
    CASE
        WHEN d.group_id IS NOT NULL THEN 'FAILED'
        ELSE 'COMPILED'
    END AS compilation_status
FROM "group" g
LEFT JOIN "view47_compilation_diagnostic" d
    ON g.group_id = d.group_id;
