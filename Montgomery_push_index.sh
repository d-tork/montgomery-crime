# remove the index
curl -X DELETE "192.168.1.145:9200/crime_montgomery_1?pretty"

# replace the template
#curl -X PUT \
#	"192.168.1.145:9200/_template/crime_montgomery?pretty" \
#	-H 'Content-Type: application/json' \
#	--data-binary "@Montgomery_index_template.json"

# Use Logstash to index data
sudo $HOME/Elastic/logstash-7.6.2/bin/logstash -f Montgomery_logstash.conf
