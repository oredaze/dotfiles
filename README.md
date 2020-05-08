# Dotfiles for Linux
This is a dotfile collection with fully adaptive colors throughout  
each application featuring the Herbstluft window manager and my custom font.

**Preview:**
![Screenshot A](https://i.imgur.com/LRoufd9.png)  
**With 1 command change all your desktop colors automatically -->**  
![Screenshot B](https://i.imgur.com/bP2FbVG.png)  
This is done with [pywal](https://github.com/dylanaraps/pywal)  
Either use a .json file with colors (few provided), or 
use [ranger](https://github.com/ranger/ranger) to pick all the colors from an image (more info below).  
  
**Preview of my custom bitmap font "droopy" // gvim colorscheme "red_dwarf":**  
**14px click ->**  
![Screenshot C](https://i.imgur.com/wDJlefC.png)  
**12px click ->**  
![Screenshot D](https://i.imgur.com/kScUPSR.png)  
2 versions of the font are provided: bdf(droopybdf) and otb(for compatibility with pango 1.44+)  
  
**I have attempted to make this setup usable out of the box as much as possible**  
**provided you install all the neccessary software listed below**  
The easiest way to use this repo is to make a new user (with shell as zsh) and clone everything  
directly into your home folder if its empty (with the dot (.) at the end):
```shell
git clone https://github.com/oredaze/dotfiles.git .
```

## Primary setup and dependencies:
- **Shell:** [zsh](https://github.com/zsh-users/zsh) + zsh-autosuggestions
- **Window Manager:** [Herbstluftwm](https://herbstluftwm.org/)
- **Bar:** [polybar](https://github.com/jaagr/polybar)  
- **Terminal:** URxvt
- **Text editor:** Vim
- **File manager:** [Ranger](https://github.com/ranger/ranger)
- **Music:** Mpd + Ncmpcpp + mpc (also dependencies for good polybar functionality)
- **Launcher:** [Rofi](https://github.com/DaveDavenport/rofi) (also dependency for polybar popup menues)
- **Screenlocker:** [i3lock](https://github.com/i3/i3lock)
- **Image viewer & wallpaper setter:** Feh (set wallpaper with ranger)
- **Color theme generation:** [pywal](https://github.com/dylanaraps/pywal) (set adaptive colors with ranger)
  
### Additional info:
- To set your wallpaper with ranger go to it and press "zw"  
I have provided thie one in the screenshot in stuff > walls
- To set your colors from a .json file go to it and launch it (enter or right arrow)  
- To set your colors from an image go to it and press "zc"  
- To set your colors from an image and reload everything go to it and press "zC"  
- To set your wallpapers; colors and reload everything use "zW" on the wallpaper    
