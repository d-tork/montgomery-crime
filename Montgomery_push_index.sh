# remove the index
echo "Deleting index first"
curl -X DELETE "192.168.1.145:9200/crime_montgomery_1?pretty"

# replace the template
echo "Putting index template (refresh, in case changes were made)"
curl -X PUT \
	"192.168.1.145:9200/_template/crime_montgomery_template?pretty" \
	-H 'Content-Type: application/json' \
	--data-binary "@Montgomery_index_template.json"

# Use Logstash to index data
echo "Logstashing data"
sudo $HOME/Elastic/logstash-7.6.2/bin/logstash -f Montgomery_logstash.conf
