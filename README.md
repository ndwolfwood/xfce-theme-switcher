# XFCE Theme Switcher Script Documentation

## Description

The XFCE Theme Switcher Script is a Bash script for automatic switching of XFCE themes (for example between light/dark) depending on a specific time of the day. When added to Autostart it will monitor the current time and change themes using xfconf-query command accordingly.

## Prerequisites

In order to use this script the following prerequisites must be met:

  **1. XFCE desktop environment**
  
  **2. xfconf-query**
  
  **3. More than 1 theme being available**

## Preparing and configuring the script

1. Download the script file (theme-switch.sh) from the repository.

2. Open the script file with any text editor of your choice.

3. Replace 'Light-Theme' and 'Dark-Theme' with the actual names of your light and dark themes respectively.

4. Replace original hours '7' and '20' with desired ones (in 24 hr time format) - or leave it as it is.

5. Save the modified file to any desired location safe from accidental removal (for example in themes directory: ~/.themes/ ).

6. Make the script executable either by ticking 'Allow this file to run as a program' from: right click -> Properties -> Permissions

  or by running below terminal command:

```  chmod +x theme-switch.sh ``` 

## Adding the script to XFCE Autostart

In order to run the script it must be added to ausotrat. For this you have to to the following:

1. Open XFCE Settings Manager.

2. Under "System' open 'Session and Startup' option.

3. Switch to 'Application Autostart' tab.

4. Click on '+ Add' button and in pop-up window fill-in the relevant fields:
   
```  Name: 'Theme Switcher Script' (or any other desired name)  ``` 

```  Description: it is optional, you can leave it empty or type any desired description  ``` 

```  Command: the actual path to your theme-switch.sh file (for example, if you saved in '.themes' folder it will be: /home/YOURUSERNAME/.themes/theme-switch.sh ) (you can also select the file via graphical menu by clicking selection toggle and navigating to you script location)  ``` 

```  Trigger: leave 'on login'  ``` 

6. Click "OK" to save it.

7. Restart the system (or alternatively log out and log in again).

8. To test if the process is running use below terminal command:

```  ps -ef | grep theme-switch.sh ``` 

## Script details and customization

The script will automatically run at every login, and then in every 5 min (300 sec).
Once executed it will check currently applied theme and current time, and will switch the theme if necessary based on determined time range (originally: daytime hours from 7am to 8pm and night hours from 8pm to 7am - times added in 24 hr format).

Times and theme names are modifiable to meet your specific demands (while it is designed to change between light and dark themes during day and night periods of time you can just switch between any two different themes and at any periods of day).
