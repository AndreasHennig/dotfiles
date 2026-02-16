#!/bin/bash

overall_memory=$(($(sysctl -n hw.memsize) / $((1024 ** 3))))

page_size=$(sysctl -n hw.pagesize)

vm_stat_output=$(vm_stat)

active_pages=$(echo $vm_stat_output | grep -o "Pages active:\s\+[0-9]\+" | grep -o "[0-9]\+")
wired_pages=$(echo $vm_stat_output | grep -o "Pages wired:\s\+[0-9]\+" | grep -o "[0-9]\+")
inactive_pages=$(echo $vm_stat_output | grep -o "Pages inactive:\s\+[0-9]\+" | grep -o "[0-9]\+")

echo $active_pages
echo $wired_pages
echo $inactive_pages

echo $(vm_stat | awk '/Pages active|Pages wired down|Pages inactive|Pages speculative|Pages occupied by compressor/ {gsub(/\./, "", $3); total += $3} END {print (total * 4096) / (1024*1024*1024) " GB"}')   
