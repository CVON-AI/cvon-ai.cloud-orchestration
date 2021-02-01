#!/bin/sh


IMAGES="local/predict_pytorch \
        local/train_pytorch"

docker build -t local/predict_pytorch predict_pytorch/
docker build -t local/train_pytorch train_pytorch/

for IMG in $IMAGES; do
  docker save $IMG | ssh <TARGET> sudo docker load
done
