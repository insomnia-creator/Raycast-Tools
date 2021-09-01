#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Battery Status
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🔋

# Documentation:
# @raycast.description Gives you a status of your battery!
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator

echo $(pmset -g batt)