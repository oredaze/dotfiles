#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"
green=$color2
yellow=$color3
cyan=$color6

nvidia-smi --query-gpu=temperature.gpu,fan.speed,memory.used,utilization.gpu --format=csv,noheader,nounits | awk -F'[,]' '{ print "%{F$cyan}%{F-} "$1"°C"", %{F$cyan}%{F-}"$2"%, %{F$yellow}%{F-}"$3"MB, %{F$green}%{F-}"$4"%"}'
