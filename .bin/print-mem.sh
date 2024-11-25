#!/bin/bash
read total available <<< $(free -m | awk '/Mem:/{printf $2" "$7}')
used_real=$(expr $total - $available)
printf "$used_real MB\n"
