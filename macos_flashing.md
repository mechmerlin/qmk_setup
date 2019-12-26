# Flashing firmware files on a macOS Environment

This guide is meant to help you get started with flashing compatible
.hex files to your QMK powered keyboard. You have your choice of either flashing with the command line or with a tool called QMK Toolbox. 

## Requirements before starting
1. You are on a computer running macOS.
2. You have a stable internet connection.
3. You currently have a .hex file for your keyboard.

## Dependencies

These instructions are only needed if you want to use the command line to flash your board. If you would like to use QMK Toolbox, proceed to the next section. 

1. Download the [qmksetup_macos.sh](qmksetup_macos.sh) script. 
2. Open up the terminal app located in Applications/Utilities.
3. Run the qmksetup_macos.sh script by typing the following in

Via terminal, navigate to where you downloaded the script. I suggest putting the script in root so
you can type the following: 

```
./qmksetup_macos.sh
```
4. Wait awhile.

## Flashing with QMK Toolbox

1. Download and install the latest version of [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). I suggest just getting the qmk_toolbox.pkg. 

2. Using QMK Toolbox, select your firmware file.

3. Put your keyboard into reset. You should get a confirmation message on QMK Toolbox.

4. If your keyboard has an AVR microcontroller, ensure that the Microcontroller matches what is on your board. For example, a dz60, should have atmega32u4. 

5. Press the Flash button and give it a moment.

6. You're done. 

## Flashing with the command line

1. Open up a terminal.

2. Put your keyboard into reset.

3. If your keyboard uses atmel-dfu, erase the current firmware installed on your keyboard by typing:
```
dfu-programmer atmega32u4 erase --force
```

4. Flash your new keymap by typing

```
dfu-programmer atmega32u4 flash pathtoyourfirmwarefile
```

5. Take your keyboard out of reset by typing

```
dfu-programmer atmega32u4 reset
```

6. You're done. 



