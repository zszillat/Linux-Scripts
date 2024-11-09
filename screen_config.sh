#!/bin/bash
xrandr \
  --output DisplayPort-1 --mode 1920x1080 --pos 0x0 \
  --output HDMI-A-1 --mode 1920x1080 --pos 1920x0 --primary \
  --output HDMI-A-0 --mode 1920x1080 --pos 3840x0
