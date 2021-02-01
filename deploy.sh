#!/bin/sh



IMAGES="local/predict_pytorch \
        local/train_pytorch"

for IMG in $IMAGES; do
  docker save $IMG | ssh <TARGET> sudo docker load
done
