#!/usr/bin/env bash
set -euo pipefail

if [[ $# != 1 ]]; then
    echo "Incorrect Usage"
    exit 1
fi

case $1 in

    "weather")
        curl 'wttr.in/Graz?format=1' | awk '{ print $2 }'
        ;;

    "disk")
        df -h | awk '/\s\/$/ { print $3 "/" $2 " (" $3 / $2 * 100 "%)" }' | sed 's/\.[0-9]*%/%/'
        ;;

    # FIXME: M instead of G causes bug
    "memory")
        free -h | awk '/^Mem/ { print $3 "/" $2 " (" $3 / $2 * 100 "%)" }' | sed s/i//g | sed 's/\.[0-9]*%/%/'
        ;;

    "date")
        date +"%d.%m.%Y"
        ;;

    "time")
        date +"%H:%M:%S"
        ;;

    "capslock")
        status=$(xset q | awk '/Caps Lock/ { print $4 }')
        if [[ $status == "on" ]]; then
            echo ' CAPS'
        else
            echo ' caps'
        fi
        ;;

    *)
        echo "Incorrect Usage"
        exit 1
        ;;
esac
