#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reset TouchBar
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔁

# Documentation:
# @raycast.description Reset the Touchbar if one exists.
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator
pkill "Touch Bar agent"
killall ControlStrip
echo "Reset TouchBar"
# if you aren't on a macbook pro, just disable this :)
