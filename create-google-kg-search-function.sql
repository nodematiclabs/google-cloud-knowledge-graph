CREATE OR REPLACE FUNCTION `google_kg_tutorial.search`(query STRING) RETURNS STRING
REMOTE WITH CONNECTION `us.google-kg-search`
OPTIONS (
  endpoint = 'ENDPOINT'
)