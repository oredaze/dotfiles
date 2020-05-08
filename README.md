# Dotfiles for Linux
This is a dotfile collection with fully adaptive colors throughout each application  
featuring the Herbstluft window manager and my custom font.
You can switch the colors of everything on the fly with a single command.

**Preview:**
![Screenshot A](https://i.imgur.com/LRoufd9.png)  
**With 1 command change all your desktop colors automatically**  
![Screenshot B](https://i.imgur.com/bP2FbVG.png)  
This is done with [pywal](https://github.com/dylanaraps/pywal) and a bit of tweaking in my dotfiles.  
You can use a predefined colorscheme or use [ranger](https://github.com/ranger/ranger) to pick all the colors from an image (more info below).  
Colors changed are: in the terminal, in polybar and its scripts, the window manager border and also rofi.
  
**Preview of my custom bitmap font "droopy" // gvim colorscheme "red_dwarf":**  
**14px click ->**  
![Screenshot C](https://i.imgur.com/wDJlefC.png)  
**12px click ->**  
![Screenshot D](https://i.imgur.com/kScUPSR.png)  
2 versions of the font are provided: bdf(droopybdf) and otb(for compatibility with pango 1.44+)  
(Look at: .local/share/fonts)
Note: In some applications my font sizes are recognized as different numbers. Still works, it's just annoying.
If anyone knows how to fix that let me know. (email at the bottom)  
Note2: Not all available glyphs are included in the preview. Also when I was making the font  
I didn't think that I would be releasing it so some of the nice icons may be out of place in the  
unicode table. You can use the file in the "stuff" directory to copy and paste icons.
  
## Install:
**I have attempted to make this setup usable out of the box as much as possible**  
**provided you install all the neccessary software listed below and follow instructions**  
**For best experience you must use my insanely awesome font :)**  
  
The easiest way to use this repo is to make a new user (with zsh as your shell) log in with it,  
press q to skip .zshrc file setup and clone everything:  
```shell
git clone https://github.com/oredaze/dotfiles.git
```
cd into the cloned dir
```shell
cd dotfiles
```
Then run the setup script:
```shell
sh setup.sh
```
Log out and in again, then type startx.  
You will most likely have a fully functional setup like mine.  
  
Instead of using the script you can manually move everything and set you wallpaper (no point).  
  
## Primary software and dependencies:
- **Shell:** [zsh](https://github.com/zsh-users/zsh) + zsh-autosuggestions
- **Window Manager:** [herbstluftwm](https://herbstluftwm.org/)
- **Bar:** [polybar](https://github.com/jaagr/polybar)  
- **Terminal:** urxvt
- **Text editor:** vim  
Plugins used in the .vimrc: [Airline](https://github.com/vim-airline/vim-airline), [ctrlP](https://github.com/ctrlpvim/ctrlp.vim), [Supertab](https://github.com/ervandew/supertab), [scrollColor](https://www.vim.org/scripts/script.php?script_id=1488), [color_highlight](http://www.github.com/chrisbra/color_highlight)
- **File manager:** [ranger](https://github.com/ranger/ranger)
- **Music:** mpd + ncmpcpp + mpc (also dependencies for good polybar functionality)
- **Compositor:** picom (for shadows and transparency)
- **Launcher:** [rofi](https://github.com/DaveDavenport/rofi) (also dependency for polybar popup menues)
- **Image viewer & wallpaper setter:** feh (set the wallpaper with ranger)
- **Color theme generation:** [pywal](https://github.com/dylanaraps/pywal) (set adaptive colors with ranger)
  
### Additional info:
- To set your wallpaper with ranger go to it and press "zw"  
- To set your colors from a predefined .json file go to it and launch it and reload herbstluftwm  
(more in .config/wal/colorschemes/dark). This has the best result. Download more schemes [here](https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes).
- To steal all the colors from an image go to it and press "zc"
- To steal all the colors from an image and reload everything go to it and press "zC"
- To set your wallpaper, colors and reload everything use "zW" on the wallpaper  
- The urxvt transparency level is controlled in the ranger files (search for '"90"' or 'wal' and change it)
- The alacritty terminal is also supported but remove the -a "90" from the ranger files (it buggs the background)
- Press the meta key + / for a herbstluftwm cheatsheet (launched in gvim)  
- .Xmodmap makes your caps lock into escape for maximum vim prowess

**A few other nice utilities with provided dot files are:**
- 8monkeys.vim is an adaptive 8/16 colorscheme for terminal vim; colors work in the tty as well.  
- additional polybar scripts (you have to enable them yourself & install dependencies)
- neofetch (for terminal info)  
- [unimatrix](https://github.com/will8211/unimatrix) (for the cool matrix effect in your terminal)
- neomutt (terminal email client)  
- tmux (terminal multiplexer, my prefix is: Alt-w)
- i3lock + scrot + imagemagick (for a nice screen locker with pixelated view of your desktop)
- tridactyl (firefox vim-like extension)
------------  
If you have troubles my mail is: 2drealm(at)gmail.com
