#!/bin/bash

docker run -it \
    --rm \
    --user $(id -u) \
    -e DISPLAY=unix$DISPLAY \
    --workdir="/home/$USER" \
    -v="/home/$USER:/home/$USER" \
    -v="/etc/group:/etc/group:ro" \
    -v="/etc/passwd:/etc/passwd:ro" \
    -v="/etc/shadow:/etc/shadow:ro" \
    -v="/etc/sudoers.d:/etc/sudoers.d:ro" \
    -v="/home/$USER/projects:/src" \
    --workdir=/src \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    haim0n/py2qt4 bash
