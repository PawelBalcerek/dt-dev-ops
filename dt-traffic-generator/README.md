# Docker - dt-traffic-generator

This folder contains elements that we need to build or configure our dt-api-net within Docker.

### How to build ?

[In progress...]

### How to import configs ?

Get in the config directory:

```shell script
cd config
```

Create a config within Docker:

```shell script
docker config create <config-name> <config-file>
```
Example with appsettings.json:

```shell script
docker config create dt-api-net-properties appsettings.json
```
