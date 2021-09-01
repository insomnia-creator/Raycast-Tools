A collection of raycast scripts by yours truly.


Just download my node.js scripts and create a script with these and you're done.


#How do I add these scripts to Raycast??????

First git clone this repository:

```zsh
git clone https://github.com/insomnia-creator/Raycast-Tools
```
Now open Raycast.

Then type extensions and open this result:


![screenshot of opening the thing](./screenshots/open_ext.png)


Then now in extensions click the '+' button and 'Add script directory'

![screenshot of extension tab](./screenshots/open_dir.png)

Choose the folder you git clon-ed to, then select the folder as the 'commands' directory.. Then open raycast again by quitting preferences. And voila! 



#How do I disable a command???


If you hate one of my commands so dearly that you want to crush it into a non-existent oblivion:

Simply go to le 'git cloned' folder and delete the command file. In this case you don't want the
open folder command so just delete the command in ./commands folder. ('open-folder.js')