# Prerequisites

- Docker and Docker Composer installed
- Minimum Docker Engine Version (17.09.0+) 

# Installation

## Create local Docker images 
```
docker-compose build
```

This shall create the following local docker images 
```
tekmi/tsc38                                     latest              deebf59f1a12        46 hours ago        181MB
tekmi/tsc39                                     latest              de6e75cd8b63        46 hours ago        184MB
```

## Update to the newest TypeScript patch version

If you look into the `Dockerfile`, we don't specify the patch version of TypeScript Compiler. (`npm install -g typescript@3.9`). This allows to always use the latest patch version. 
- If you need to target a specific version, feel free to update the Dockerfile.
- If you want to get the latest version, just rebuild all the images with `docker-compose build --no-cache`

## Verify images

```
docker run tekmi/tsc39 tsc --version
docker run tekmi/tsc38 tsc --version
```


# Cleanup

If you want to remove the local images, please run the following
```
docker rmi -f tekmi/tsc39
docker rmi -f tekmi/tsc38
```
