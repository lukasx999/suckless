#!/usr/bin/env bash
set -euo pipefail

if [[ $# != 1 ]]; then
    echo "Incorrect Usage"
    exit 1
fi

widget=$1

case $widget in

    "memory")
        free -h | awk '/^Mem/ { print $3 "/" $2 }' | sed s/i//g
        ;;

    "date")
        date +"%d.%m.%Y"
        ;;

    "time")
        date +"%H:%M:%S"
        ;;

    *)
        echo "Incorrect Usage"
        exit 1
        ;;
esac
