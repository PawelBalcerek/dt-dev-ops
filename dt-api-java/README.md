# Docker - dt-api-java

This folder contains elements that we need to build or configure dt-api-java in Docker.

### How to build ?

Firstly, we need to get dt-api-java project:

```shell script
git clone https://github.com/PawelBalcerek/dt-api-java.git 
```

Then we can step into project's folder:

```shell script
cd dt-api-java
```

Now if we configured Docker properly, we can use a command below:

```shell script
docker image build -t dt-api-java:<image-tag> .
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

Example with application.properties:

```shell script
docker config create dt-api-java-properties application.properties
```
