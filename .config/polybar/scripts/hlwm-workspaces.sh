#!/usr/bin/env bash

source "${HOME}/.cache/wal/colors.sh"
fg=$foreground
grey=$color8
red=$color1
yellow=$color3
magenta=$color5

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do
        # Read tags into $tags as array
        IFS=$'\t' read -ra tags <<< "$(herbstclient tag_status)"
        {
            #echo "%{F$grey}:%{F-}"
            for i in "${tags[@]}" ; do
                # Read the prefix from each tag and render them according to that prefix
		#echo "%{F$grey}:%{F-}"
                case ${i:0:1} in
                    '#')
                        # the tag is viewed on the focused monitor
			echo "%{F$red}%{T3}"
                        ;;
                    ':')
                        # : the tag is not empty
                        echo "%{F$fg}"
                        ;;
                    '!')
                        # ! the tag contains an urgent window
			echo "%{F$magenta}"
                        ;;
                    '-')
                        # - the tag is viewed on a monitor that is not focused
			echo "%{F$yellow}"
                        ;;
                    *)
                        # . the tag is empty
                        # There are also other possible prefixes but they won't appear here
                        echo "%{F$grey}"
                        ;;
                esac

                echo "%{A1:herbstclient use ${i:1}:} ${i:1} %{A -u -o F- B- T-}"
            done

            echo "%{F-}%{B-}%{T-}"
        } | tr -d "\n"

    echo

    # wait for next event from herbstclient --idle
    read -r || break
done
} 2>/dev/null

