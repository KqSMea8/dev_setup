#! /bin/bash

function init() {
    if [[ $# != 1 ]];then
        echo "Usage: run_docker.sh image_name"
        exit 1
    fi

    IMG=$1
    LOCAL_DIR=$HOME

    docker ps -a --format "{{.Names}}" | grep 'tmp_container' 1>/dev/null
    if [ $? == 0 ]; then
        docker stop tmp_container 1>/dev/null
        docker rm -f tmp_container 1>/dev/null
    fi

    display=""
    if [[ -z ${DISPLAY} ]];then
        display=":0"
    else
        display=${DISPLAY}
    fi
}

function main() {
    init $1
    docker run -it \
        -d \
        --name tmp_container \
        -e DISPLAY=$display \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v $LOCAL_DIR:/mnt \
        --net host \
        -w /mnt \
        $IMG \
        /bin/bash
}

main $@
