CREATE OR REPLACE VIEW "view23_group_shape" AS
SELECT
    group_id,
    definition_count,
    dependency_count,
    source_count,
    output_count,
    internal_count,
    isolated_count,
    CASE
        WHEN dependency_count = 0 THEN 'ISOLATED'
        WHEN source_count = 1
         AND output_count = 1
         AND internal_count = definition_count - 2
            THEN 'CHAIN'
        WHEN source_count > 1
         AND output_count = 1
            THEN 'MERGE'
        WHEN source_count = 1
         AND output_count > 1
            THEN 'BRANCH'
        ELSE 'COMPLEX'
    END AS group_shape
FROM "view22_group_complexity";
