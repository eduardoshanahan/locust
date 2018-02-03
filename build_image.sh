IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name":"'$IMAGE_VERSION'"}' -X POST https://registry.hub.docker.com/u/eduardoshanahan/locust/trigger/bfe93465-711e-43d9-896e-63dae2b1b508/