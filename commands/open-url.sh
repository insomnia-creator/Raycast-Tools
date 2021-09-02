#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open URL
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🌏
# @raycast.argument1 { "type": "text", "placeholder": "URL?" }

# Documentation:
# @raycast.description Opens a URL in your browser!
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator

open $1

echo "Opened!"x