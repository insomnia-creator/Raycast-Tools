#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy date and time
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ๐

# Documentation:
# @raycast.description Copy the current date and time(via โdateโ)
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator

echo "Copied $(date)"
date | pbcopy
