#!/bin/sh

docker build -t rctphone/entware-build-env .
docker run -itd --name entware-build-env -h entware-build-env -v entware-dev:/home/openwrt/openwrt -v ./rctphone:/home/openwrt/openwrt/feeds/rctphone -v ./packages:/home/openwrt/openwrt/bin/targets/aarch64-3.10/generic-glibc/packages rctphone/entware-build-env
docker exec -it entware-build-env bash