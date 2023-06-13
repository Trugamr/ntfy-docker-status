#!/bin/sh

./ntfy-status.sh started

trap "./ntfy-status.sh stopped" SIGTERM SIGINT 

sleep infinity & wait