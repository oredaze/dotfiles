#!/bin/sh

chmod +x .bin/* \
	.config/herbstluftwm/autorun.sh \
	.config/herbstluftwm/autostart \
	.config/polybar/scripts/* \
	.config/ranger/colorschemes/* \
	.config/ranger/scope.sh

cp -Rn * ~
cp -Rn .* ~
rm -Rf *
rm -Rf .*
rm -Rf ~/.git ~/setup.sh
rm -r ../dotfiles
echo '#!/bin/sh' > ~/.fehbg
echo "feh --bg-fill '/home/$USER/stuff/walls/brown_leaves.png'" >> ~/.fehbg
chmod +x ~/.fehbg
