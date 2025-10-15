#!/bin/bash

xhost +local:docker

is_l4t_r36=$(docker image ls dfl_uuv | grep l4t_r36)

if [ "$is_l4t_r36" != "" ] ;then 
    echo "Detected image of l4t_r36"
    docker run -it \
        --privileged \
        --network=host \
        --runtime=nvidia\
        --env="DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --env="NVIDIA_VISIBLE_DEVICES=all"\
        --env="NVIDIA_DRIVER_CAPABILITIES=all"\
        --env="ROS_DOMAIN_ID=10"\
        --volume="/dev:/dev" \
        --volume="/tmp:/tmp" \
        --volume="${HOME}/ws_uuv:/root/ws_uuv" \
        --name="dfl_uuv_dev" \
        dfl_uuv:l4t_r36
fi
