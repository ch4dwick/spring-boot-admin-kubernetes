# Spring Boot Admin with Kubernetes Discovery Support

I realized there aren't examples of this use case online that is updated to the latest Spring libraries, so I decided to make one after our project required it.

## Assumptions

- This Service is running in an EKS Cluster.
- Services are deployed in a namespace named ns-01

## Considerations

- Running Spring Boot Admin locally with this config is a little misleading since most of its cloud features don't actually kick in unless it is inside the cluster.
- SwaggerConfig seems to break management.server.port mapping. [This](https://stackoverflow.com/questions/75140173/exposing-actuator-endpoints-on-different-port) explains the issue somewhat.