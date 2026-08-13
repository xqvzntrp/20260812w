CREATE OR REPLACE VIEW "compiled_statement" AS
SELECT
    group_id,
    definition_id,
    compiled_statement
FROM "view44_compiled_statement_export";
