#!/usr/bin/env bash
# Thanks to: Rod Elias - https://github.com/chapeupreto

json="{\"date\": \"$(date +%F)\", \"data\": {"
while read qtde country; do
  json="${json}\"${country}\": ${qtde},"
done < <(curl -s http://blutmagie.de/query_export.php/Tor_query_EXPORT.csv | cut -d"," -f2 | sort | uniq -c | sort -nr)
json="${json:0:${#json}-1}}}"

echo "${json}" > torNodes.json
