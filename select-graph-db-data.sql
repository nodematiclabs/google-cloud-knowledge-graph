SELECT
  *,
  PARSE_JSON(google_kg_tutorial.search(name)) as entity
FROM google_kg_tutorial.graph_databases;
