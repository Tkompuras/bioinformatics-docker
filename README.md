# Bioinformatics Dockerfile

A basic dockerfile for all my bioinformatics needs

---

## Usage

* Navigate to download location

* Build the image
```docker build -t bioinformatics:1.0.0 .```
* Run container
```docker run -d -p 9875:9875 --restart=unless-stopped bioinformatics:1.0.0```
* Use the token from the docker logs.
```docker ps``` Find the container id. ```docker logs [container_id]```. Get the token
