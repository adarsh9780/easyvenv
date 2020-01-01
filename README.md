### Easy Way To Make and Manage Python3 Virtual Environments
#### NAME
easyvenv.sh - Shell script to create a python3 virtual environment

#### HOW TO USE
    - Download the script at any location
    - From the same location, run `bash easyvenv.sh`
    - It will ask for `project_name`, enter the name and you are good to go
    - Additionaly you can pass some optional arguments as `bash easyvenv.sh [OPTIONS]`*Some of these options are default behaviour*

#### DESCRIPTION
easyvenv.sh is a shell script to create python3 virtual environments(venvs).The idea behind this tool is to create venvs and setting up the shortcuts in one go.
The script uses python3's default virtual environment manager called venv.
The biggest advantage of this script would be its ability to store all venvs in one place. Another thing is that you don't have to install any other library/tools for your project thus keeping your environment clean.
If anything goes wrong with project environment you will know where you should look.


#### ACTIVATE
If this is first instance, first restart the terminal or 'source ~/.bashrc'.
Then 'source $<project_name>' to activate the environment. 'project_name' would be asked once the script is
run(this feature may change in future), so make sure you don't specify complete path, instead just pass the project name.
To deactivate the environment, simply run 'deactivate'.
If this is not your first time activating the environment, simply run 'source $<project_name>'

#### REQUISITES
python3 should be installed, use 'python3 --version' to check if it is installed. pip3 should be installed, use pip3 --version to check if it is installed

#### OPTIONS

#####  --help
show this help message and exit

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
    1.) Add ability to create multiple venvs at one go
    2.) Set default location where all venvs would be stored
    3.) Provision for Windows

#### CONTACT
Please reach out to me at `adarshmaurya7@gmail.com` for any bug
