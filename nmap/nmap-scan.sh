#!/bin/bash
target=$1
nmap -T4 -p- -oN "${target}-scan-results.txt" "$target"
