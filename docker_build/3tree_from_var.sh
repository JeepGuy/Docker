#!/bin/bash
# Created Date:
#
#  Give a tree view for those systems without Tree in BASH - in this casestaring from /var.
# ------------------------------------------------------------------------------------

echo " "
echo " Starting the \"CentOS 7 Tree view custom/\" Script  - Named:  \"jims_centos_7_tree.sh "
echo " ----------------------------------------------------------------------------- "
echo " "
echo " A 3 level deep directory viewer for CentOS 7 starting from the /var directory."
echo " "
# Main body of the shell script starts here.
#
# ^ (caret)    means "the beginning of the line". So "^a" means find a line starting with an "a".

cd /var

shopt -s globstar
for file in **/*
do
    slash=${file//[^\/]}
    case "${#slash}" in
        0) echo "|-- ${file}";;
        1) echo "|   |--  ${file}";;
        2) echo "|   |   |--  ${file}";;
    esac
done

# ------------------------------------------------------------------------------------
echo " "
echo " ----------------------------------------------------------------------------- "
echo " "
# ------------------------------------------------------------------------------------
# Exit with an explicit exit status last.
echo "Script ran successfully with an exit status of 0 (zero)."
echo " "
echo "This container will exit in 3 seconds"

echo " "
echo " 3 "
sleep 1
echo " "
echo " 2 "
sleep 1
echo " "
echo " 1 "
echo " "
sleep 1
exit
