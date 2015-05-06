#!/bin/bash

  mkdir -p /config/.kde
  rm -r /nobody/.kde
  ln -s /config/.kde /nobody/.kde
  chown nobody:users /nobody/.kde
  chown -R nobody:users /config/.kde
