CREATE OR REPLACE VIEW "view43_compiled_statement" AS
SELECT
    s.group_id,
    s.definition_id,
    (
        s.select_clause
        || ' '
        || f.from_clause
        ||
        CASE
            WHEN w.where_clause IS NOT NULL
            THEN ' ' || w.where_clause
            ELSE ''
        END
        ||
        CASE
            WHEN g.group_by_clause IS NOT NULL
            THEN ' ' || g.group_by_clause
            ELSE ''
        END
    ) AS compiled_statement
FROM "view39_select_clause" s
JOIN "view40_from_clause" f
    ON s.group_id = f.group_id
   AND s.definition_id = f.definition_id
JOIN "view41_where_clause" w
    ON s.group_id = w.group_id
   AND s.definition_id = w.definition_id
JOIN "view42_group_by_clause" g
    ON s.group_id = g.group_id
   AND s.definition_id = g.definition_id;
