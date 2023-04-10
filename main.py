import functions_framework
import json

from google.cloud import enterpriseknowledgegraph as ekg
from google.protobuf.json_format import MessageToDict
from proto.marshal.collections import MapComposite
from proto.marshal.collections import RepeatedComposite

project_id = 'PROJECT'
location = 'global'

def map_composite_to_dict(obj):
    if isinstance(obj, MapComposite):
        return {k: map_composite_to_dict(v) for k, v in obj.items()}
    elif isinstance(obj, (list, tuple, RepeatedComposite)):
        return [map_composite_to_dict(v) for v in obj]
    else:
        return obj

def search_kg(
    search_query: str,
    limit: int = 20,
):
    # Create a client
    client = ekg.EnterpriseKnowledgeGraphServiceClient()

    # The full resource name of the location
    # e.g. projects/{project_id}/locations/{location}
    parent = client.common_location_path(project=project_id, location=location)

    # Initialize request argument(s)
    request = ekg.SearchRequest(
        parent=parent,
        query=search_query,
    )

    # Make the request
    response = client.search(request=request)

    print(f"Google KG Search Query: {search_query}\n")
    for item in response.item_list_element:
        print(map_composite_to_dict(item))


    return json.dumps([map_composite_to_dict(item) for item in response.item_list_element])

@functions_framework.http
def entrypoint(request):
    request_json = request.get_json(silent=True)

    if request_json and 'calls' in request_json:
        results = []
        for call in request_json['calls']:
            results.append(
                search_kg(call[0])
            )
        return {'replies': results}
    else:
        return ""