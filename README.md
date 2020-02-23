### Easy Way To Make and Manage Python3 Virtual Environments
#### NAME
easyvenv.sh - A lightweight yet reliable and efficient replacement for `virtualenv`.

#### USAGE
easyvenv [-[SCRIPT OPTIONS] --[VENV OPTIONS]]
- 1. CREATE: `easyvenv -create <project_name>`
- 2. LIST: `easyvenv -list`
- 3. REMOVE: `easyvenv -remove <project_name>`

#### HOW TO USE
- 1. Download the script at any location
- 2. From the same location, run `bash easyvenv.sh -create <project_name>`
- 3. Additionaly, you can pass some optional arguments as `bash easyvenv.sh [OPTIONS]`
- 4. (OPTIONAL), place the script in $HOME/bin or $HOME/local/bin and give the script executable permissions. Add $HOME/bin or $HOME/local/bin to $PATH. Once done, script can be accessed from anywhere

#### DESCRIPTION
easyvenv.sh is a bash script to create python3 virtual environments(venvs). This single tool can create, list and remove virtual environments. The design of the tool enforces some design choices on the user; all virtual environments would be stored in a same location no matter where the actual project is stored. This helps user on focusing just the project rather than managing virtual environment for different project


#### ACTIVATE
After creating the venv, run `source ~/.bashrc` (this is one time step). Once done, run `source $project_name` to activate the environment. Run `deactivate` to exit out from the environment

#### REQUISITES
python3 should be installed, use `python3 --version` to check if it is installed. pip3 should be installed, use `pip3 --version` to check if it is installed

#### SCRIPT OPTIONS

#####  -help
show this help message and exit

#####  -list
list all the virtual environments created using this script

##### -remove
remove the given virtual environment

#### PYTHON VENV OPTIONS
Script option is recognized only by signle use of hyphen; `-list` is script option, but venv options are passed using double hyphen; `--symlinks` is an venv option. This highlights the fact that this script is a simple wrapper around `venv`

#####  --system-site-packages
Give the virtual environment access to the system site-packages dir.

#####  --symlinks
Try to use symlinks rather than copies, when symlinks are not the default for the platform.

#####  --copies
Try to use copies rather than symlinks, even when symlinks are the default for the platform.

#####  --clear
Delete the contents of the environment directory if it already exists, before environment creation.

#####  --upgrade
Upgrade the environment directory to use this version of Python, assuming Python has been upgraded in-place.

#####  --without-pip
Skips installing or upgrading pip in the virtual environment (pip is bootstrapped by default)

#####  --prompt
Provides an alternative prompt prefix for this environment.

#### NOTES
**This tool only works for Linux right now**

#### FUTURE WORK
    - Add ability to create multiple venvs at one go
	- Add ability to delete multiple venvs at one go
	- When deleting virtual environments, remove the bashrc coded added

#### CONTACT
Please reach out to me at `adarshmaurya7@gmail.com` for any bug
