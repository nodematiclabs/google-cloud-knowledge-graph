INSERT INTO `google_kg_tutorial.graph_databases` (name, language, license, storage_backend, query_language, notable_features)
VALUES
  ('Neo4j', 'Java', 'GPL v3 / AGPL v3', 'Native', 'Cypher', 'ACID transactions, high scalability, rich data model'),
  ('ArangoDB', 'C++', 'Apache 2.0', 'Native', 'AQL', 'Multi-model (graph, document, key-value), high performance, fault-tolerant'),
  ('JanusGraph', 'Java', 'Apache 2.0', 'Pluggable', 'Gremlin', 'Distributed, supports various storage backends (Cassandra, HBase, etc.)'),
  ('OrientDB', 'Java', 'Apache 2.0', 'Native', 'SQL-like / Gremlin', 'Multi-model (graph, document), ACID transactions, high performance'),
  ('GraphDB', 'Java', 'AGPL v3', 'Native', 'SPARQL', 'RDF triples, optimized for semantic graphs and inferencing'),
  ('Cayley', 'Go', 'Apache 2.0', 'Pluggable', 'Gremlin / GraphQL / MQL', 'Lightweight, schema-free, supports various storage backends');
