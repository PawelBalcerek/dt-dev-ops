# Docker - dt-traffic-generator

This folder contains elements that we need to build or configure our dt-api-net within Docker.

### How to build ?

Firstly, we need to get dt-traffic-generator project:

```shell script
git clone https://github.com/PawelBalcerek/dt-traffic-generator.git
```

Then we can step into project's folder:

```shell script
cd dt-traffic-generator
```

Now if we configured Docker properly, we can use a command below:

```shell script
docker image build -t dt-traffic-generator:<image-tag> .
```

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
docker config create dt-traffic-generator-properties appsettings.json
```
