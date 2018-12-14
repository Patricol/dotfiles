# User-Template-Files
https://github.com/dylanaraps/pywal/wiki/User-Template-Files

https://material.io/tools/color/

Variables

{color0} --> {color15}: Colors 0-15.
{background}: Background color.
{foreground}: Foreground color.
{cursor}: Cursor color.
{wallpaper}: The full path to the current wallpaper.
Modifiers

Note: These apply to all variables minus wallpaper.

{color0}: Output the color in hex.
{color0.rgb}: Output the color in rgb.
{color0.xrgba}: Output the color in xrgb.
{color0.strip}: Output the color in hex (without a # ).

I want to stick a bit close to the default console colors, which I believe are:
color0: #000000
color1: #aa0000
color2: #00aa00
color3: #aa5500
color4: #0000aa
color5: #aa00aa
color6: #00aaaa
color7: #aaaaaa
color8: #555555
color9: #ff5555
color10: #55ff55
color11: #ffff55
color12: #5555ff
color13: #ff55ff
color14: #55ffff
color15: #ffffff
Especially for the first 8 colors (0-7), which I'm guessing are more likely to be used in terminal stuff.

I'll define what I'm using each slot for:
color0: the darkest grayscale in the colorscheme
color1: red
color2: green
color3: yellow
color4: blue
color5: pink
color6: cyan
color7: the second brightest grayscale in the colorscheme
color8: the third darkest grayscale in the colorscheme
color9: accent color
color10: lighter hue of accent color
color11: warning color
color12: brown
color13: the second darkest grayscale in the colorscheme
color14: the third brightest grayscale in the colorscheme
color15: the brightest grayscale in the colorscheme

others:
electric
material
brown
orange

alerts should be jarring; they shouldn't fit in with the rest of the colors.

I'm generally one for monochrome with accent colors. having a lot of good base colors in the first row lets me use them for accenting certain types of things; and I need 1,7,8,15 for monochrome, leaving me 9-14

I need another almost-white, so I can have 3 shades of text that are readable on black. use 14 for that.