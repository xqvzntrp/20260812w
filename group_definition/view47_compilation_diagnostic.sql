CREATE OR REPLACE VIEW "view47_compilation_diagnostic" AS
SELECT
    group_id,
    result_type AS diagnostic
FROM "view46_compilation_result"
WHERE result_type <> 'COMPILED';
