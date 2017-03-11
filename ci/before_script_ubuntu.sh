#!/bin/sh

apt='apt -yqq'
install="$apt install --no-install-recommends"

    bash ci/docker_install.sh \
&&  $apt update \
&&  $install make default-jdk maven astyle android
