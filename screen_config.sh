#!/bin/bash

# Set up DisplayPort-0 as the leftmost monitor
xrandr --output DisplayPort-0 --mode 1920x1080 --pos 0x0

# Set up HDMI-A-0 as the center monitor
xrandr --output HDMI-A-0 --mode 1920x1080 --pos 1920x0 --primary

# Set up HDMI-A-1 as the rightmost monitor
xrandr --output HDMI-A-1 --mode 1920x1080 --pos 3840x0
