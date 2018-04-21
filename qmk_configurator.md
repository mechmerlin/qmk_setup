# QMK Configurator

The [QMK Configurator](https://config.qmk.fm) is an online graphical user interface that generates QMK Firmware hex files. It is still very much a work in progress, but is improving very quickly. Please follow these steps in order. 

## Selecting your keyboard

Click the drop down box and select the keyboard you want to create a keymap for. If your keyboard has several versions, make sure you select the correct one. 

If your keyboard has been advertised to be powered by QMK but is not in the list, chances are a developer hasn't gotten to it yet. File an issue at [qmk_firmware](https://github.com/qmk/qmk_firmware/issues) requesting for support for that particular keyboard. There are also QMK powered keyboards that are in their manufacturer's own github accounts. Double check for that as well. 

## Selecting your keyboard layout

Choose the layout that best represents the keymap you want to create. Some keyboards do not have enough layouts or correct layouts defined yet. They will be supported in the future. 

## Keymap Name

Call this keymap what you want. 

## Creating Your Keymap

Keycode Entry is accomplished by drag and dropping or clicking on an empty spot on the layout and selecting the keycode you desire. Hover your mouse over a key and a short blurb should tell you what that keycode does. For a more verbose description please see [Keycode Reference](https://docs.qmk.fm/keycodes)  

In the event that you can't find a layout that supports your keymap, for example three spots for spacebar, or two spots for backspace, or 2 spots for shift etc etc, Fill them ALL up. 

### Example:

3 spots for spacebar: Fill them ALL with spacebar

2 spots for backspace: Fill them BOTH with backspace

2 spots for right shift: Fill them BOTH with right shift

1 spot for left shift and 1 spot for iso support: Fill them both with left shift

## Saving Your Keymap for Future Edits

When you're satisfied with your keymap or just want to work on it later, press the `Export Keymap` button. It will save your keymap as the name you chose above appended with .json. 

You can then load this .json file in the future by pressing the `Import Keymap` button. 

** CAUTION: ** This is not the same type of .json file used for kbfirmware.com or any other tool. If you try to use this for those tools, or the .json from those tools with QMK Configurator, there is a chance your keyboard will explode. 

## Generating your .hex file

Press the green `Compile` button.

When the compilation is done, you will be able to press the green `Download .hex` button. 

## Flashing Your Keyboard

Choose your operating system to follow the guide:

[Windows](windows_flashing.md)    
[macOS](macos_flashing.md)   

## Problems and Bugs

We are always accepting customer requests and bug reports. Please file them at [qmk_configurator](https://github.com/qmk/qmk_configurator/issues)
