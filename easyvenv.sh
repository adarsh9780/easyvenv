#! /bin/bash

help_message(){
    bold=$(tput bold)
    normal=$(tput sgr0)

    echo "${bold}NAME"
    echo "      ${normal} easyvenv.sh - Shell script to create a python3 virtual environment"

    echo
    echo "${bold}SYNOPSIS"
    echo "      ${normal}./easyvenv.sh [OPTIONS]"

    echo
    echo "${bold}DESCRIPTION"
    echo "      ${normal}easyvenv.sh is a shell script to create python3 virtual environments(venvs). The idea behind this tool is to create venvs and setting up the shortcuts in one go. This tool uses python3's default virtual environment manager called venv. The biggest advantage of this script would be its ability to store all venvs in one place." | fmt

    echo
    echo "${bold}ACTIVATE"
    echo "      ${normal}If this is first instance, first restart the terminal or 'source ~/.bashrc'. Then 'source $<project_name>' to activate the environment. 'project_name' would be asked once the script is run(this feature may change in future), so make sure you don't specify complete path, instead just pass the project name. To deactivate the environment, simply run 'deactivate'" | fmt
    echo "      ${normal}If this is not your first time activating the environment, simply run 'source $<project_name>'"

    echo
    echo "${bold}REQUISITES"
    echo "      ${normal}python3 should be installed, use 'python3 --version' to check if it is installed. pip3 should be installed, use pip3 --version to check if it is installed" | fmt

    echo
    echo "${bold}OPTIONS"

    echo
    echo "  ${bold}--help"
    echo "      ${normal}show this help message and exit" | fmt

    echo
    echo "  ${bold}--system-site-packages"
    echo "      ${normal}Give the virtual environment access to the system site-packages dir." | fmt

    echo
    echo "  ${bold}--symlinks"
    echo "      ${normal}Try to use symlinks rather than copies, when symlinks are not the default for the platform." | fmt

    echo
    echo "  ${bold}--copies"
    echo "      ${normal}Try to use copies rather than symlinks, even when symlinks are the default for the platform." | fmt

    echo
    echo "  ${bold}--clear"
    echo "      ${normal}Delete the contents of the environment directory if it already exists, before environment creation." | fmt

    echo
    echo "  ${bold}--upgrade"
    echo "      ${normal}Upgrade the environment directory to use this version of Python, assuming Python has been upgraded in-place." | fmt

    echo
    echo "  ${bold}--without-pip"
    echo "      ${normal}Skips installing or upgrading pip in the virtual environment (pip is bootstrapped by default)" | fmt

    echo
    echo "  ${bold}--prompt"
    echo "      ${normal}Provides an alternative prompt prefix for this environment." | fmt

    echo
    echo "${bold}NOTES"
    echo "      ${normal} For Windows users, --symlinks option is not recommended" | fmt

    echo
    echo "${bold}FUTURE WORK"
    echo "      ${normal}1.) Add ability to create multiple venvs at one go" | fmt
    echo "      ${normal}2.) Set default location where all venvs would be stored." | fmt
}

if [ "$1" == "--help" ]
then help_message
else
    printf 'Welcome. This script creates a python3 virtual environment at ~/.venvs3/<Your Project Name>.\nEnter <Your Project Name> now.\n' | fmt
    #
    read -p 'Project Name : ' project_name
    # Don't need to create .venvs3, if it doesn't exist, this script will create one
    path=$HOME'/.venvs3/'$project_name
    #catch all the argumentss
    args=("$@")
    # create the environment at the given location
    python3 -m venv $args $path
    # create a variable inside bashrc file so to activate the environment from anywhere
    echo "$project_name=\$HOME/.venvs3/"$project_name"/bin/activate" >> ~/.bashrc

    # Some more information for end user
    printf 'Your virtual environment is located at '$path'\n' | fmt
    printf 'Restart the terminal or use "source ~/.bashrc" and then run "source $'$project_name'" to activate the environment\n' | fmt
fi
