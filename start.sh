#!/bin/bash

if [ ! -f "mcserver" ]; then
    wget -N --no-check-certificate https://gameservermanagers.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver
fi
if [ ! -d "mcserver" ]; then
    sudo -u mcserver yes Y | ./mcserver install
fi

sudo -u mcserver yes Y | ./mcserver start

/bin/bash