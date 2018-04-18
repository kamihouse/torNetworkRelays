# Tor Project Relays Locations
Simplified global mapping (world location) of the **Tor Project** nodes network by *Coderi : Inteligência Empresarial*.

![1.0.0](https://img.shields.io/badge/Version-1.0.0-green.svg?longCache=true&style=flat)

#### Sample screen
![Sample](images/sample.png)

### Install & Run
* Install dependencies: `npm install`
* Export JSON data: `./exportDataToJson.sh`
* Local server: `npm run serve` - http://127.0.0.1:8080

### Processing data
CSV Data: http://blutmagie.de/query_export.php/Tor_query_EXPORT.csv  

Counting (decreasing): `curl -s  http://blutmagie.de/query_export.php/Tor_query_EXPORT.csv | awk 'BEGIN { FS = "," } ; { print $2 }' | sort | uniq -c | sort -nr`

### Technology & Sources
* Tor Project - https://www.torproject.org
* Blutmagie - http://blutmagie.de/
* JQuery - https://jquery.com
* JVectorMap - http://jvectormap.com
* Node & NPM - https://nodejs.org
* ./jq - https://stedolan.github.io/jq/
