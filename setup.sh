#!/bin/sh

chmod +x .bin/* \
	.config/herbstluftwm/autorun.sh \
	.config/herbstluftwm/autostart \
	.config/polybar/scripts/* \
	.config/ranger/colorschemes/* \
	.config/ranger/scope.sh

mv * ~
cd ..
rm -r dotfiles
print "Log out, back in and startx"
