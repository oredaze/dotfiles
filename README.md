# Dotfiles for Linux
This is a dotfile collection with fully adaptive colors throughout each application  
featuring the Herbstluft window manager and my custom font.

**Preview:**
![Screenshot A](https://i.imgur.com/LRoufd9.png)  
**With 1 command change all your desktop colors automatically -->**  
![Screenshot B](https://i.imgur.com/bP2FbVG.png)  
This is done with [pywal](https://github.com/dylanaraps/pywal)  
Either use a .json file with colors (few provided), or 
use [ranger](https://github.com/ranger/ranger) to pick all the colors from an image (more info below).  
Colors changed are: in the terminal, in polybar and its scripts, the window manager border and also rofi.
  
**Preview of my custom bitmap font "droopy" // gvim colorscheme "red_dwarf":**  
**14px click ->**  
![Screenshot C](https://i.imgur.com/wDJlefC.png)  
**12px click ->**  
![Screenshot D](https://i.imgur.com/kScUPSR.png)  
2 versions of the font are provided: bdf(droopybdf) and otb(for compatibility with pango 1.44+)  
Note that not all available glyphs are included in the preview. Also when I was making the font  
I didn't think that I would be releasing it so some of the nice icons may be out of place in the  
unicode table. You can use the file in the "stuff" directory to copy and paste icons.
  
## Install:
**I have attempted to make this setup usable out of the box as much as possible**  
**provided you install all the neccessary software listed below**  
**For best experience you must use my font :)**  
The easiest way to use this repo is to make a new user (with zsh as your shell) and clone everything  
directly into your home folder if its empty (with the dot (.) at the end):
```shell
git clone https://github.com/oredaze/dotfiles.git .
```
Then log out and in again, then set your wallpaper.  
You will most likely have a fully functional setup like mine then.

## Primary software and dependencies:
- **Shell:** [zsh](https://github.com/zsh-users/zsh) + zsh-autosuggestions
- **Window Manager:** [Herbstluftwm](https://herbstluftwm.org/)
- **Bar:** [Polybar](https://github.com/jaagr/polybar)  
- **Terminal:** URxvt
- **Text editor:** Vim  
Plugins used in the .vimrc: [Airline](https://github.com/vim-airline/vim-airline), [ctrlP](https://github.com/ctrlpvim/ctrlp.vim), [Supertab](https://github.com/ervandew/supertab), [scrollColor](https://www.vim.org/scripts/script.php?script_id=1488), [color_highlight](http://www.github.com/chrisbra/color_highlight)
- **File manager:** [Ranger](https://github.com/ranger/ranger)
- **Music:** Mpd + Ncmpcpp + mpc (also dependencies for good polybar functionality)
- **Compositor:** Picom (for shadows and transparency)
- **Launcher:** [Rofi](https://github.com/DaveDavenport/rofi) (also dependency for polybar popup menues)
- **Screenlocker:** [i3lock](https://github.com/i3/i3lock) (dependencies for cool screen pixelization: scrot; imagemagick)
- **Image viewer & wallpaper setter:** Feh (set the wallpaper with ranger)
- **Color theme generation:** [Pywal](https://github.com/dylanaraps/pywal) (set adaptive colors with ranger)
  
### Additional info:
- To set your wallpaper with ranger go to it and press "zw"  
I have provided thie one in the screenshot in stuff > walls
- To set your colors from a .json file go to it and launch it (enter or right arrow)
(found in .config/wal/colorschemes/dark) and restart herbst
- To set your colors from an image go to it and press "zc"
- To set your colors from an image and reload everything go to it and press "zC"
- To set your wallpapers; colors and reload everything use "zW" on the wallpaper  
- The urxvt transparency level is controlled in the ranger files (search for '"90"' or 'wal' and change it)
- The alacritty terminal is also supported but remove the -a "90" from the ranger files (it buggs the background)
  
**A few other nice utilities with provided dot files are:**
- 8monkeys.vim is an adaptive 8/16 colorscheme for terminal vim; colors work in the tty as well.  
- additional polybar scripts (you have to enable them yourself & install dependencies)
- neofetch (for terminal info)  
- neomutt (terminal email client)
- tridactyl (firefox vim-like extension)
------------  
If you have troubles my mail is: 2drealm(at)gmail.com
