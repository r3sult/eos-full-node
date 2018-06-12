#!/bin/bash
################################################################################
#                                                                             ##
# For EOS main-net                                                            ##
#                                                                             ##
# https://github.com/acroeos/                                                 ##
#                                                                             ##
################################################################################

DIR=/home/user/scrip_DIR

    if [ -f $DIR"/nodeos.pid" ]; then
        pid=$(cat $DIR"/nodeos.pid")
        echo $pid
        kill $pid
        rm -r $DIR"/nodeos.pid"

        echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos stopped. \n"

    fi
    