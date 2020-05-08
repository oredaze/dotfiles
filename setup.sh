#!/bin/sh

chmod +x .bin/* \
	.config/herbstluftwm/autorun.sh \
	.config/herbstluftwm/autostart \
	.config/polybar/scripts/* \
	.config/ranger/colorschemes/* \
	.config/ranger/scope.sh

cp -R * ~/
cp -R .* ~/
rm -Rf *
rm -Rf .*
echo "#\!/bin/sh" > ~/.fehbg
echo "feh --bg-fill '/home/$USER/stuff/walls/brown_leaves.png'" >> ~/.fehbg
chmod +x ~/.fehbg
