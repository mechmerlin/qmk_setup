# Flashing .hex files on a Windows Environment

This guide is meant to help you get started with flashing compatible
.hex files to your QMK powered keyboard. 

## Requirements before starting
1. You are on a Windows computer.
2. You have a stable internet connection.
3. You currently have a .hex file for your keyboard.
4. You know how to put your keyboard into reset. Ask the manufacturer if you don't. Sometimes this procedure is included in the readme. 

## Drivers

#### If you have been struggling and have tried installing driver after driver from guides A, B, C, D....etc etc. I would suggest to uninstall them ALL before continuing. 

1. Download the latest version of [qmk_driver_installer](https://github.com/qmk/qmk_driver_installer/releases). I suggest just getting the zip file. 

2. Unzip the zip file and double click on .bat file named install_all_drivers.bat

3. Give it some time to download and install all necessary drivers.

## QMK Toolbox

#### If you have not installed the drivers mentioned above, the following will not work. Go back and install the drivers first. 

1. Download the latest version of [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). I suggest just getting the qmk_toolbox.exe.

2. Using QMK Toolbox, open your hex file.

3. Put your keyboard into reset. You should get a confirmation message on QMK Toolbox.

4. Ensure that the Microcontroller matches what is on your board. For example, a dz60, should have atmega32u4. 

5. Press the Flash button and give it a moment.

6. You're done. 

### QMK Toolbox Gotchas

These are some common issues encountered. Try them in the following order. 

1. If you're not able to flash, did you install the drivers? 

2. If you're still unable to flash, double check that the microcontroller selected is indeed correct. When plugging in your keyboard, the tool will actually report what microcontroller it is seeing.

3. If you're still unable to flash, try to run the Toolbox as administrator by right clicking on the executable and pressing `Run as administrator`

4. If flashing on a pro-micro, check your anti-virus software to see if either QMKToolbox or avrdude has been blacklisted. Unblacklist it to get flashing. 

5. Your keyboard probably isn't supported. 
