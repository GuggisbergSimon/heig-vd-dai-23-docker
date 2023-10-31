To pull the image to docker:
```
docker pull ghcr.io/guggisbergsimon/my-docker:v3.0
```

To run the container on its own:
```
docker run --rm -p 8080:5000 -v ./my-docker/my-data:/app/data -v ./my-docker/my-config:/app/config ghcr.io/guggisbergsimon/my-
docker:v3.0
```

To run the container by using docker compose:
```

docker compose up -d
```

To shut it down 
```
docker compose down
```