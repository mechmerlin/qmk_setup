# info.json Tutorial

The info.json file is used by QMK Configurator to generate the visible layout. This DOES NOT generate keymaps. Only the QMK Configurator generates keymap. 

If you're looking to generate keymaps refer to this [guide](https://github.com/mechmerlin/qmk_setup/blob/master/qmk_configurator.md)

Definitions:
Layout: Physical description of the board. 1u keys go here, 2u keys go there, 6u keys go here etc. Think of a house having rooms. Those rooms don't change without significant remodeling. That is the layout of your house.   
Keymap: Description of what those keys do when they are pressed. Using the above example, this is what the each of those rooms are used for. Bedroom, study, playroom, etc etc.     
JSON: A file format similar to .doc, .pdf, .txt. For example, drivers_license.pdf and teriyaki_recipe.pdf contain different information despite both being PDFs.     

The info.json is different from the resulting QMK Configurator keymap.json. It
is also different from the json files created by KLE. Do not use one in place of the other. Refer to definition of JSON as to why. 

In order to create an appropriate info.json file, you will need

1. An appropriate LAYOUT macro defined for the keyboard you wish to support
2. [keyboard-layout-editor](http://www.keyboard-layout-editor.com/) (KLE)
3. https://qmk.fm/converter

For this tutorial we will be using the meme as an example. 

## Step 1: Create KLE from LAYOUT macro

In `meme.h`, you will see a macro called LAYOUT_all. 

Pay attention to the top part

```
#define LAYOUT_all( \
    K00, K10, K01, K11, K02, K12, K03, K13, K04, K14, K05, K15, K06, K16, K07, K17, \
    K20, K30, K21, K31, K22, K32, K23, K33, K24, K34, K25, K35, K26, K36,      K37, \
    K40, K50, K41, K51, K42, K52, K43, K53, K44, K54, K45, K55,      K56,      K57, \
    K60, K70, K61, K71, K62, K72, K63, K73, K64, K74, K65,           K76, K67, K77, \
    K80, K90, K81,           K92,                     K85, K95, K86, K96, K87, K97 \
)\
```

You will see that there are 16 columns

```
K00, K10, K01, K11, K02, K12, K03, K13, K04, K14, K05, K15, K06, K16, K07, K17,
```

and 5 rows

```
K00
K20
K40
K60
K80
```

As you create your KLE file, each row in your KLE must have the same number of keys
as each row in the LAYOUT_all macro. 

For example in LAYOUT_all, the row beginning with K00 has 16 elements in it. So that same
row in your KLE must also have 16 keys. If you look at the bottom row beginning with K80,
it only has 10 elements so your bottom row in the KLE must also have 10 elements. 

You are free to adjust the size of the keys to make it look visibly pleasing. 


## Step 2: Convert KLE Raw to info.json

Click on the `Raw data` tab and copy all the text.    
Paste it into https://qmk.fm/converter and press the `convert` button   
Copy and paste the contents of Output into a file called `info.json` in your keyboard's folder. 

In the case of the meme, it goes into

```
keyboards/meme/info.json
```

## Step 3: Make sure layout names match between info.json and keyboard.h

In the `layouts` key of your info.json file, you should have several elements such as:

```
      "LAYOUT_all": {
          "layout": [{"label":"~", "x":0, "y":0}, {"label":"!", "x":1, "y":0}, {"label":"@", "x":2, "y":0}, {"label":"#", "x":3, "y":0}, {"label":"$", "x":4, "y":0}, {"label":"%", "x":5, "y":0}, {"label":"^", "x":6, "y":0}, {"label":"&", "x":7, "y":0}, {"label":"*", "x":8, "y":0}, {"label":"(", "x":9, "y":0}, {"label":")", "x":10, "y":0}, {"label":"_", "x":11, "y":0}, {"label":"+", "x":12, "y":0}, {"x":13, "y":0}, {"x":14, "y":0}, {"x":15, "y":0}, {"label":"Tab", "x":0, "y":1, "w":1.5}, {"label":"Q", "x":1.5, "y":1}, {"label":"W", "x":2.5, "y":1}, {"label":"E", "x":3.5, "y":1}, {"label":"R", "x":4.5, "y":1}, {"label":"T", "x":5.5, "y":1}, {"label":"Y", "x":6.5, "y":1}, {"label":"U", "x":7.5, "y":1}, {"label":"I", "x":8.5, "y":1}, {"label":"O", "x":9.5, "y":1}, {"label":"P", "x":10.5, "y":1}, {"label":"{", "x":11.5, "y":1}, {"label":"}", "x":12.5, "y":1}, {"label":"|", "x":13.5, "y":1, "w":1.5}, {"x":15, "y":1}, {"label":"Caps Lock", "x":0, "y":2, "w":1.75}, {"label":"A", "x":1.75, "y":2}, {"label":"S", "x":2.75, "y":2}, {"label":"D", "x":3.75, "y":2}, {"label":"F", "x":4.75, "y":2}, {"label":"G", "x":5.75, "y":2}, {"label":"H", "x":6.75, "y":2}, {"label":"J", "x":7.75, "y":2}, {"label":"K", "x":8.75, "y":2}, {"label":"L", "x":9.75, "y":2}, {"label":":", "x":10.75, "y":2}, {"label":"\"", "x":11.75, "y":2}, {"label":"Enter", "x":12.75, "y":2, "w":2.25}, {"x":15, "y":2}, {"label":"Shift", "x":0, "y":3, "w":2.25}, {"label":"Z", "x":2.25, "y":3}, {"label":"X", "x":3.25, "y":3}, {"label":"C", "x":4.25, "y":3}, {"label":"V", "x":5.25, "y":3}, {"label":"B", "x":6.25, "y":3}, {"label":"N", "x":7.25, "y":3}, {"label":"M", "x":8.25, "y":3}, {"label":"<", "x":9.25, "y":3}, {"label":">", "x":10.25, "y":3}, {"label":"?", "x":11.25, "y":3}, {"label":"Shift", "x":12.25, "y":3, "w":1.75}, {"x":14, "y":3}, {"x":15, "y":3}, {"label":"Ctrl", "x":0, "y":4, "w":1.25}, {"label":"Win", "x":1.25, "y":4, "w":1.25}, {"label":"Alt", "x":2.5, "y":4, "w":1.25}, {"x":3.75, "y":4, "w":6.25}, {"label":"Alt", "x":10, "y":4}, {"label":"Win", "x":11, "y":4}, {"x":12, "y":4}, {"x":13, "y":4}, {"x":14, "y":4}, {"x":15, "y":4}]
      },

```

Make sure the names of these elements match your .h file. For example LAYOUT_all here should match LAYOUT_all in `meme.h`

## Optional

Some keyboards have LAYOUTs that are confusing. Feel free to make one on your own, test it and follow Steps 1-3 again. Please note that on some keyboards, the spacebar might not always be K92, it could switch to the other ones that are marked KC_NO. 
