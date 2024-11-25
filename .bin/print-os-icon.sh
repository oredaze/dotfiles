#!/bin/bash
name="$(cat /etc/os-release | head -n 1)"

if [[ "${name}" == "NAME=Gentoo" ]]; then
	echo ""
elif [[ "${name}" == "NAME=\"Void\"" ]]; then
	echo ""
elif [[ "${name}" == "NAME=Slackware" ]]; then
	echo ""
fi
