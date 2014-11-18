# Docker for twinky-collector + Influx

twinky-collector is a very simple node proxy to relay POSTs to a given "route"
upstream to another server and pipe the response back.  

This container is setup to proxy POSTs from the 'twinky' client running on
browsers to an InfluxDB database running in another container.

### how to run

specify credentials via ENV when running:

    $ docker run -e INFLUXDB_DATABASE=mydb -e INFLUXDB_USERNAME=admin -e INFLUXDB_PASSWORD=passwird --name twinky --link influxdb:influxdb sbeam/twinky-collector

### more info

see https://github.com/sbeam/twinky-collector for updates.
