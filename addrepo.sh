#!/bin/bash

    cd /etc/apt
    sudo cat <<'EOF' >> sources.list
    deb http://apt.symcon.de/ stable rpi
     
