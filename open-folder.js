#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Open folder
// @raycast.mode silent

// Optional parameters:
// @raycast.icon 📂
// @raycast.argument1 { "type": "text", "placeholder": "path?" }

// Documentation:
// @raycast.description Open a folder, just type it’s path and you’re good to go!
// @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
// @raycast.authorURL https://github.com/insomnia-creator
const {exec} = require('child_process');

const folderPath = process.argv.slice(2)[0];


exec(`open ${folderPath}`, (err) => {
    if(err){
        console.log("Invalid folder path! ⚠️");
    } else {
        console.log("Opened! ✅");
    }
})




