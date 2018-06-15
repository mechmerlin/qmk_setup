# QMK on your PS2AVR(GB) boards

Unlike keyboards that can be natively powered by QMK, ps2avr type boards not only use a different microcontroller, but also a slightly different way of flashing.

Please be advised that while QMK is possible on ps2avr(gb) boards, problems such as overheating, random shutdowns, have been reported. 

## Requirements before starting

1. Your ps2avr(gb) keyboard is currently supported in [QMK](https://github.com/qmk/qmk_firmware/tree/master/keyboards)
2. You have an appropriately generated firmware file in the `.hex` format for your keyboard. 
3. You know how to put your keyboard in reset.

## Flashing on macOS


1. Open up a terminal, it is in Applications/Utilities/Terminal
2. Install homebrew by copy and pasting:

       /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
3. Install all dependencies. Please refer to [QMK's Installing Build Tools](https://github.com/qmk/qmk_firmware/blob/master/docs/getting_started_build_tools.md) and refer to the macOS section.
4. Next, copy and paste the following lines:

       brew cask install crosspack-avr     
       brew install --HEAD https://raw.githubusercontent.com/robertgzr/homebrew-tap/master/bootloadhid.rb
       brew install python
       pip3 install pyusb

5. Put your keyboard into reset.

6. Type in 

       bootloadHID -r path_to_your_hexfile.hex

## Flashing on Windows

1. Download [HIDBootFlash](http://vusb.wikidot.com/project:hidbootflash).
2. Open up HIDBootFlash.exe
3. Put your keyboard into reset.
4. Click the `Find Device` button.
5. Click the `Open hex File` button and navigate to your hex file.
6. Clilck the `Flash Device` button. 
