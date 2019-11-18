# Docker swarm - DayTrader stacks

How to start with Docker Swarm?

```shell script
docker swarm init
```

Now we're ready to go with deployment.

### Java stack

##### How to deploy?

```shell script
docker stack deploy -c java-stack.yaml
```

##### Needed configs:

- application.properties - inside directory /dt-api-java/config,
- runtimeConfig.properties - inside directory /dt-app/config.
- postgres image environments

Deployer's hands should provide proper configs for applications.

### Net stack

##### How to deploy?

```shell script
docker stack deploy -c net-stack.yaml
```

##### Needed configs:

- appsettings.json - inside directory /dt-api-net/config,
- runtimeConfig.properties - inside directory /dt-app/config.
- postgres image environments

Deployer's hands should provide proper configs for applications.

