#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Screensaver
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💤

# Documentation:
# @raycast.description Start the screensaver!
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator

oldlocation='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app'
newlocation='/System/Library/CoreServices/ScreenSaverEngine.app'
if [ ${newlocation} ]; then
  open ${newlocation}
elif [ ${oldlocation} ]; then
  open ${oldlocation}
else
  echo 'you using like a 1983 mac or wat?'
fi