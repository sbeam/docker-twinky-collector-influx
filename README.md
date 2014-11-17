# Docker for twinky-collector + Influx

Twinky-collector is a very simple node proxy to provide an authenticating relay
between the 'twinky' client running on browsers and an InfluxDB database. This
is a docker container to hook it to the local InfluxDB container.

### how to run

specify credentials via ENV when running:

    $ docker run -e INFLUXDB_DATABASE=mydb -e INFLUXDB_USERNAME=admin -e INFLUXDB_PASSWORD=passwird --name twinky --link influxdb:influxdb sbeam/twinky-collector
