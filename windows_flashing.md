# Flashing .hex files on a Windows Environment

This guide is meant to help you get started with flashing compatible
.hex files to your QMK powered keyboard. 

## Requirements before starting
1. You are on a Windows computer.
2. You have a stable internet connection.
3. You currently have a .hex file for your keyboard.

## Drivers

1. Download the latest version of [qmk_driver_installer](https://github.com/qmk/qmk_driver_installer/releases). I suggest just getting the zip file. 

2. Unzip the zip file and double click on .bat file named install_all_drivers.bat

3. Give it some time to download and install all necessary drivers.

## QMK Toolbox

1. Download the latest version of [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). I suggest just getting the qmk_toolbox.exe.

2. Using QMK Toolbox, open your hex file.

3. Put your keyboard into reset. You should get a confirmation message on QMK Toolbox.

4. Ensure that the Microcontroller matches what is on your board. For example, a dz60, should have atmega32u4. 

5. Press the Flash button and give it a moment.

6. You're done. 

