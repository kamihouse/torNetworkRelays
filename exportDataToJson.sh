#!/usr/bin/env bash
# Thanks to: Rodiney Elias - https://github.com/chapeupreto

json='{'
while read qtde country; do
    json="${json}\"${country}\":\"${qtde}\","
done < <(curl -s http://blutmagie.de/query_export.php/Tor_query_EXPORT.csv | cut -d"," -f2 | sort | uniq -c | sort -nr)
json="${json:0:-1}}"

echo "$json" > torNodes.json
echo "{\"date\": \"$(date +%F)\"}" > torNodesDate.json
