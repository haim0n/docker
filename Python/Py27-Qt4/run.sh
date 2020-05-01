#!/bin/bash

docker run -it \
    --rm \
    --user $(id -u) \
    -e DISPLAY=unix$DISPLAY \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/home/$USER/projects:/projects" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    tzutalin/py2qt4 bash
