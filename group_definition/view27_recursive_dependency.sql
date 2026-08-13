CREATE OR REPLACE VIEW "view27_recursive_dependency" AS
WITH RECURSIVE dependency_path AS (

    SELECT
        group_id,
        dependent_definition_id,
        dependency_definition_id
    FROM "view02_dependency"

    UNION

    SELECT
        p.group_id,
        p.dependent_definition_id,
        d.dependency_definition_id
    FROM dependency_path p
    JOIN "view02_dependency" d
        ON p.group_id = d.group_id
       AND p.dependency_definition_id = d.dependent_definition_id
)

SELECT DISTINCT
    group_id,
    dependent_definition_id,
    dependency_definition_id
FROM dependency_path;
