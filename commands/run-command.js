#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Run Command
// @raycast.mode fullOutput

// Optional parameters:
// @raycast.icon 🛠
// @raycast.argument1 { "type": "text", "placeholder": "command" }
// @raycast.argument2 { "type": "text", "placeholder": "sudo", "optional": true}

// Documentation:
// @raycast.description Run a command through the terminal in Raycast!
// @raycast.author CorsairRGB 16gb DDR4 3200MHz RAM
// @raycast.authorURL https://github.com/insomnia-creator

//sudo 
//osascript -e 'do shell script "command" with administrator privileges'
const {exec} = require('child_process')
const command = process.argv.slice(2)[0];
const sudo = process.argv.slice(2)[1];

const sudoResps = new Set("y", "yes", "ye", "yeah", "true", "t");
const sudoRespsUpperCase = new Set("Y", 'YES', 'YE', 'YEAH', 'TRUE', 'T');
if(sudoResps.has(sudo) || sudoRespsUpperCase.has(sudo) || command.startsWith("sudo")){
    exec(`osascript -e 'do shell script "${command}" with administrator privileges'`, (error, stdout, stderr) => {
        if(error){
            console.log(`\x1b[30;41m${error}\x1b[0m`);
            //note you will need to activate raycast window again.
        } else {
            console.log(stdout);
            
        }
    
    })
} else {
    exec(command, (error, stdout, stderr) => {
        if(error){
            console.log(`\x1b[30;41m${error}\x1b[0m`)
        } else {
            console.log(stdout);
        }
    })
}

