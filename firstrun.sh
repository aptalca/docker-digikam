#!/bin/bash

  mkdir -p /config/.kde
  rm -r /nobody/.kde
  ln -s /config/.kde /nobody/.kde
  chown nobody:users /nobody/.kde
  chown -R nobody:users /config/.kde

if [ ! "$EDGE" = "1" ]; then
  echo "Bleeding edge not requested."
else
  echo "Updating digiKam to latest"
  apt-get update
  apt-get install -y digikam
  echo "digiKam updated to latest"
fi
