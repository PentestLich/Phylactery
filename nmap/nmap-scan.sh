#!/bin/bash
target=$1
nmap -sC -sV -oN "${target}-scan-results.txt" "$target"
