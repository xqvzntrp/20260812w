CREATE OR REPLACE VIEW "view04_dependent_definition" AS
SELECT DISTINCT
    group_id,
    dependent_definition_id AS definition_id
FROM "view02_dependency";

-- inverse of view03: definitions that do depend on something.

