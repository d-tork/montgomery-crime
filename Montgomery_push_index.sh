curl -X PUT \
	"192.168.1.145:9200/_template/crime_montgomery?pretty" \
	-H 'Content-Type: application/json' \
	--data-binary "@Montgomery_index_template.json"
