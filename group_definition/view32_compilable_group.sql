CREATE OR REPLACE VIEW "view32_compilable_group" AS
SELECT
    group_id
FROM "view31_group_validity"
WHERE validity = 'VALID_ACYCLIC';
