<h3>DESCRIPTION:</h3>
This repository is the script for NeoVim (nvim) configuration (init.lua) to return keyboard layout from any local character page to English/US on return from [Insert] mode.
<h3>INSTALLATION:</h3>
1) Contents fom the init.lua file in this repo should be copied to the end of your init.lua file.<br />
Replace the placeholder "&lt;path_to_home_dir&gt;" with the actual full path to that script.<br />
2) switch2us.sh should be placed inside of your local nvim config folder (possibly, inside of: "~/.config/nvim/" dir) and you should give it execution permissions (chmod -c +x "~/.config/nvim/switch2us.sh")
<h3>REQUIREMENTS:</h3>
If "setxkbmap" is missing, an "x11-xkb-utils" package should be installed.
<h3>WARNING:</h3>
This was tested only on "Awesome" (X.Org) and "KDE 6" (WayLand) DEs on Linux. It wasn't tested anywhere else, including Windows or MacOS.
<h3>TODOs:</h3>
1) Adding fixes for other Desktop Environments and/or OSes.<br />
2) Adding a functionality to return to lower case, i.e. turning off Caps Lock on return from the [Insert] mode.
