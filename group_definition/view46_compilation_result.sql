CREATE OR REPLACE VIEW "view46_compilation_result" AS
SELECT
    c.group_id,
    c.definition_id,
    c.compiled_statement,
    'COMPILED' AS result_type
FROM "compiled_statement" c

UNION ALL

SELECT
    v.group_id,
    NULL AS definition_id,
    NULL AS compiled_statement,
    v.validity AS result_type
FROM "view31_group_validity" v
WHERE v.validity <> 'VALID_ACYCLIC';
