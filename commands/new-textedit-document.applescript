#!/usr/bin/osascript

use AppleScript version "2.4"
use scripting additions

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New Document
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📄
# @raycast.argument1 { "type": "text", "placeholder": "Platform" }

# Documentation:
# @raycast.description Make a new TextEdit document with a filename of your choice!
# @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
# @raycast.authorURL https://github.com/insomnia-creator

on run argv
  set platform to ( item 1 of argv )
  if platform = "textedit" or platform = "text edit" then
    tell application "TextEdit"
      activate

      make new document
      log "Made a new TextEdit file!"

    end tell
  else if platform = "word" or platform = "microsoft word" then
    tell application "Microsoft Word"
      activate
      make new document
      log "Made a new Word document!"
    end tell
 else if platform = "pages" then
        tell application "Pages"
          activate
          make new document
          log "Made a new Word document!"
        end tell
   else if platform = "bean" then
          tell application "Bean"
            activate
            make new document
            log "Made a new Word document!"
          end tell
    else if platform = "coteditor" then
                  tell application "CotEditor"
                    activate
                    make new document
                    log "Made a new Word document!"
                  end tell
  end if


end run

