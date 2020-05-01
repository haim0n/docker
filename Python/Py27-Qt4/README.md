### Build image
```
make
```

### Pull the image from Docker hub

```
docker pull haim0n/py2qt4
```

### Usage
Change directory to your project's dir, then run in the interactive mode:
```
docker run -it -v=$(pwd):$(pwd) --workdir=$(pwd) --rm haim0n/py2qt4
```

Run PyQt app on the container
```
    docker run -it \
    --user $(id -u) \
    -e DISPLAY=unix$DISPLAY \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    haim0n/py2qt4
```
