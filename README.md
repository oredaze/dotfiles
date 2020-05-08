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
- **Image viewer & wallpaper setter:** [sxiv](https://github.com/muennich/sxiv)
- **Color theme generation:** [pywal](https://github.com/dylanaraps/pywal)
