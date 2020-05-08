#!/bin/sh

chmod +x .bin/* \
	.config/herbstluftwm/autorun.sh \
	.config/herbstluftwm/autostart \
	.config/polybar/scripts/* \
	.config/ranger/colorschemes/* \
	.config/ranger/scope.sh

cp -Rn * ~
cp -Rn .* ~ 2>/dev/null
rm -Rf ~/.git ~/setup.sh ../dotfiles
echo '#!/bin/sh' > ~/.fehbg
echo "feh --no-fehbg --bg-fill '/home/$USER/stuff/walls/brown_leaves.png'" >> ~/.fehbg
chmod +x ~/.fehbg
echo "Done. Log out and then login again."
