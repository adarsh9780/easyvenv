### Easy Way To Make and Manage Python3 Virtual Environments
#### NAME
easyvenv.sh - A lightweight yet reliable and efficient replacement for `virtualenv`.

#### USAGE
easyvenv [-[SCRIPT OPTIONS] --[VENV OPTIONS]]
1. CREATE: `easyvenv -create <project_name>`
2. LIST: `easyvenv -list`
3. REMOVE: `easyvenv -remove <project_name>`
4. ACTIVATE: `source activate_<project_name>`, for e.g. if project name is `TEST`, then use `source activate_TEST` to activate
5. DEACTIVATE: `deactivate`

### NOTES ON USAGE:
- After using script with any of `-create` or `-remove` option, bash has to be reloaded to apply the affect by either using `source ~/.bashrc` or restarting the terminal
- Script can only be accessed from the location where its placed
- To access the script from any location, create `~/.local/bin` or `~/bin`, place the script inside this folder, add the path of the folder to `$PATH` variable. Once done, script can be accessed from any location

#### DESCRIPTION
easyvenv.sh is a bash script to create python3 virtual environments(venvs). This single tool can create, list and remove virtual environments. The design of the tool enforces some design choices on the user; all virtual environments would be stored in a same location no matter where the actual project is stored. This helps user on focusing just the project rather than managing virtual environment for different project

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

#### CHANGES
- Instead of adding new variables to bashrc, create aliases
- All the aliases will be stored in `~/.venvs3/aliases`

#### CONTACT
Please reach out to me at `adarshmaurya7@gmail.com` for any bug
