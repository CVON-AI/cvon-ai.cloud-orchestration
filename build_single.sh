#!/bin/sh

img=$1
IMG="local/$img"

docker build -t local/$img $img/

docker save $IMG | ssh <TARGET> sudo docker load
