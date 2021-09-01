#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Update Raycast Tools
// @raycast.mode fullOutput

// Optional parameters:
// @raycast.icon ⬇️

// Documentation:
// @raycast.description Update Raycast Tools by downloading from the official repository.
// @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
// @raycast.authorURL https://github.com/insomnia-creator

const {exec} = require('child_process');

const current_directory = __dirname.slice(0, indexOf("/commands"));
const dir_to_download = current_directory.slice(0, current_directory.indexOf("/Raycast-Tools/"))
console.log("Directory to remove." + current_directory);

console.log(`Directory to install updated Raycast-Tools to: ${dir_to_download}`);



exec(`rm -rf ${current_directory}`, (error) => {
    if(error){
        console.log(`An error occurred \n Could not update Raycast tools, full description:
        
        ${error}
        
        ~~~
        Explanation- Raycast tools does not probably have permission to remove the directory it currently is in.
        `);
    } else {
        console.log("Removed Old Raycast-Tools directory");
    }
})


exec(`cd ${dir_to_download}; git clone https://github.com/insomnia-creator/Raycast-Tools`, (error) => {
    if(error){
        console.log(`An error occurred \n Could not update Raycast tools, full description:
        
        ${error}
        
        ~~~
        Git probably does not exist, Raycast-Tools requires 'git' to be installed. Brew command - brew install git
        `);
    } else {
        console.log("Updated Raycast Tools! 🚀")
    }
})






