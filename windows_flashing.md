# Flashing `.hex/.bin` firmware files on a Windows Environment

This guide is meant to help you get started with flashing compatible
firmware files to your QMK powered keyboard. 

AVR powered keyboards use firmware files with the `.hex` extension, and ARM powered keyboards use firmware files with the `.bin` extension. 

Example AVR keyboards: dz60, do60, 1up60hse, etc.  
Example ARM keyboards: dz60rgb, dz65rgb, hs60v2, etc.  

## Requirements before starting
1. You are on a Windows computer.
2. You have a stable internet connection.
3. You currently have a firmware file for your keyboard.
4. You know how to put your keyboard into reset. Ask the manufacturer if you don't. Sometimes this procedure is included in the readme. 

## Drivers

#### If you have been struggling and have tried installing driver after driver from guides A, B, C, D....etc etc. I would suggest to uninstall them ALL before continuing. The different combinations of drivers are known to block flashing of boards. 

1. Download [Zadig](https://zadig.akeo.ie/).

2. Open Zadig

3. **AVR Keyboards:** Select the `libusb-win32 (v 1.2.6.0)` driver from the drop down menu.  
   **ARM Keyboards:** Select the `libusbK (v3.0.7.0)` driver from the drop down menu. 
   
4. Open zadig -> options -> list all devices.  

5. Select interface 0 or wherever your board is connected.    

4. Press `Replace Driver` and let it do its job. 

## QMK Toolbox

#### If you have not installed the drivers mentioned above, the following will not work. Go back and install the drivers first. 

1. Download the latest version of [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). I suggest just getting the `qmk_toolbox.exe`. At the time of writing (09/15/19), the latest version is 0.0.12. 

2. Using QMK Toolbox, select your firmware file.

**Please note: You can ignore the drop down in "Keyboard from qmk.fm"**. You only have to worry about this if you want to download a default firmware file from the QMK servers. 

3. Put your keyboard into reset. Please refer to your manufacturer as to what the process is. Some boards have a button you press on the back, some boards have a switch, some boards have a reset sequence such as holding Space + B. **This is NOT a RESET button you press on the QMK Toolbox**. You should get a confirmation message on QMK Toolbox. If you don't, double check that you have the reset procedure correct. 

4. Ensure that the Microcontroller matches what is on your board. For example, a dz60, should have atmega32u4. If you have an ARM based board such as a dz60rgb, you can ignore this drop down. 

5. Press the Flash button and give it a moment.

6. You're done. 

### QMK Toolbox Troubleshooting

These are some common issues encountered. Try them in the following order. 

1. If you're not able to flash, did you install the drivers? If you see 'ATm32U4DFU' in QMK Toolbox this means you have the incorrect driver and you need to update the driver. If the method above did not work, try this.

    Visit [qmk_toolbox drivers](https://github.com/qmk/qmk_toolbox/tree/master/windows/QMK%20Toolbox/dfu-prog-usb-1.2.2) and download the drivers for your system.  
    Navigate to your Device Manager.  
    Press reset button on bottom of keyboard PCB.  
    Locate the 'Other Device' that has a '!'  
    Select on Other device then right click on ATmega32U4  
    Select Update Driver Software and click 'Browse my computer for driver'.  
    Select the drivers you downloaded above. 

2. If you're still unable to flash, double check that the microcontroller selected is indeed correct. When plugging in your keyboard, the tool will actually report what microcontroller it is seeing.

3. If you're still unable to flash, try to run the Toolbox as administrator by right clicking on the executable and pressing `Run as administrator`

4. If flashing on a pro-micro, check your anti-virus software to see if either QMKToolbox or avrdude has been blacklisted. Unblacklist it to get flashing. 

5. Your keyboard probably isn't supported. 
