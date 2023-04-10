curl -X GET \
    -H "Authorization: Bearer $(gcloud auth print-access-token)" \
    "https://enterpriseknowledgegraph.googleapis.com/v1/projects/PROJECT/locations/global/cloudKnowledgeGraphEntities:Search?query=neo4j&limit=3"