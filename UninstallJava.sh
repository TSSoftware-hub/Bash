#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# Description: Remove Java silently

# Get the logged in user's name
userName=$(who | grep console | awk '{print $1}')

if [[ -z $userName || "$userName" == "root" ]]; then
     echo "No user is currently logged in."
     exit 1
else
    # Define and declare variables

    fileName001=/Users/$userName/Library/Application\ Support/Oracle/Java
    fileName002=/Library/LaunchAgents/com.oracle.java.Java-Updater.plist
    fileName003=/etc/java/config/jre-install.properties
    fileName004=/Users/$userName/.oracle_jre_usage
    fileName005=/Library/PreferencePanes/JavaControlPanel.prefpane
    fileName006=/Library/Preferences/com.oracle.java.Deployment.plist
    fileName007=/Users/$userName/Library/Preferences/com.oracle.javadeployment.plist.lockfile
    fileName008=/Users/$userName/Library/Preferences/com.oracle.javadeployment.plist
    fileName009=/Users/$userName/Library/Preferences/com.oracle.java.JavaAppletPlugin.plist.lockfile
    fileName010=/Users/$userName/Library/Preferences/com.oracle.java.JavaAppletPlugin.plist
    fileName011=/Library/Application\ Support/Oracle/Java
    fileName012=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin

    # Delete each file if exists

    # fileName001
    if [[ -e "$fileName001" ]]; then
        rm -rf "$fileName001"
        echo "$fileName001" ": Was deleted!"
    else
        echo "$fileName001" ": Wasn't found!"
    fi

    # fileName002
    if [[ -e "$fileName002" ]]; then
        rm -rf "$fileName002"
        echo "$fileName002" ": Was deleted!"
    else
        echo "$fileName002" ": Wasn't found!"
    fi

    # fileName003
    if [[ -e "$fileName003" ]]; then
        rm -rf "$fileName003"
        echo "$fileName003" ": Was deleted!"
    else
        echo "$fileName003" ": Wasn't found!"
    fi

    # fileName004
    if [[ -e "$fileName004" ]]; then
        rm -rf "$fileName004"
        echo "$fileName004" ": Was deleted!"
    else
        echo "$fileName004" ": Wasn't found!"
    fi

    # fileName005
    if [[ -e "$fileName005" ]]; then
        rm -rf "$fileName005"
        echo "$fileName005" ": Was deleted!"
    else
        echo "$fileName005" ": Wasn't found!"
    fi

    # fileName006
    if [[ -e "$fileName006" ]]; then
        rm -rf "$fileName006"
        echo "$fileName006" ": Was deleted!"
    else
        echo "$fileName006" ": Wasn't found!"
    fi

    # fileName007
    if [[ -e "$fileName007" ]]; then
        rm -rf "$fileName007"
        echo "$fileName007" ": Was deleted!"
    else
        echo "$fileName007" ": Wasn't found!"
    fi

    # fileName008
    if [[ -e "$fileName008" ]]; then
        rm -rf "$fileName008"
        echo "$fileName008" ": Was deleted!"
    else
        echo "$fileName008" ": Wasn't found!"
    fi

    # fileName009
    if [[ -e "$fileName009" ]]; then
        rm -rf "$fileName009"
        echo "$fileName009" ": Was deleted!"
    else
        echo "$fileName009" ": Wasn't found!"
    fi

    # fileName010
    if [[ -e "$fileName010" ]]; then
        rm -rf "$fileName010"
        echo "$fileName010" ": Was deleted!"
    else
        echo "$fileName010" ": Wasn't found!"
    fi

    # fileName011
    if [[ -e "$fileName011" ]]; then
        rm -rf "$fileName011"
        echo "$fileName011" ": Was deleted!"
    else
        echo "$fileName011" ": Wasn't found!"
    fi

    # fileName012
    if [[ -e "$fileName012" ]]; then
        rm -rf "$fileName012"
        echo "$fileName012" ": Was deleted!"
    else
        echo "$fileName012" ": Wasn't found!"
    fi

    # Exit
    exit 0
    
fi    