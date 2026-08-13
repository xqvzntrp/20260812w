-- schema.sql
--
-- Input relations for the SQL compiler.
--
-- Loaded from:
--
--   group.csv
--   definition.csv
--   group_definition.csv
--
-- Execution:
--
--   LOAD group.csv
--   LOAD definition.csv
--   LOAD group_definition.csv
--   RUN  schema.sql
--   RUN  compiler.sql
--   EXPORT compiled_statement
--   PUBLISH export-package


DROP TABLE IF EXISTS "group_definition";
DROP TABLE IF EXISTS "definition";
DROP TABLE IF EXISTS "group";


CREATE TABLE "group" (
    group_id    TEXT PRIMARY KEY,
    group_name  TEXT NOT NULL,
    group_by    TEXT NOT NULL
);


CREATE TABLE "definition" (
    definition_id    TEXT PRIMARY KEY,
    definition_name  TEXT NOT NULL
);


CREATE TABLE "group_definition" (
    group_id          TEXT NOT NULL,
    definition_id     TEXT NOT NULL,
    input_expression  TEXT NOT NULL,
    aggregation       TEXT NOT NULL,
    condition         TEXT,
    expression        TEXT,

    PRIMARY KEY (
        group_id,
        definition_id
    ),

    FOREIGN KEY (group_id)
        REFERENCES "group" (group_id),

    FOREIGN KEY (definition_id)
        REFERENCES "definition" (definition_id)
);
