# Docker - dt-app

This folder contains elements that we need to build or configure dt-app within Docker.

### How to build ?

Firstly, we need to get dt-app project:

<i> git clone https://github.com/PawelBalcerek/dt-app.git </i>

Then we can step into project's folder:

<i> cd dt-app </i>

Now if we configured Docker properly, we can use a command below:

<i> docker image build -t dt-app:\<image-tag\> . </i>

### Description for config files

### How to import configs ?

Get in the config directory:

```shell script
cd config
```

Create a config within Docker:

```shell script
docker config create <config-name> <config-file>
```

Example with runtimeConfig.json:

```shell script
docker config create dt-app-properties runtimeConfig.json
```
