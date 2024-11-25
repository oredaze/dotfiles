#!/bin/sh

print_cpu_temp(){
	sensors -A | rg "Tctl:" | awk '{print $2}' | cut -c2-3
}
print_gpu_temp(){
	sensors -A | rg "edge:" | awk '{print $2}' | cut -c2-3
}
print_ssd_temp(){
	sensors -A | rg "Composite:" | awk '{print $2}' | cut -c2-3
}

for arg do
	case "$arg" in
		-c) echo $(print_cpu_temp)° ;;
		-g) echo $(print_gpu_temp)° ;;
		-s) echo $(print_ssd_temp)° ;;
		*) echo "Bad option (one of -c -g -s)"
	esac
done
