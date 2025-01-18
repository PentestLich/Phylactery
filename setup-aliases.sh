#!/bin/bash

# Define aliases for scripts
alias updatesystem='curl -s https://raw.githubusercontent.com/PentestLich/Phylactery/main/General/update | bash'
alias nmapscan='curl -s https://raw.githubusercontent.com/PentestLich/Phylactery/refs/heads/main/nmap/nmap-scan.sh | bash -s'
alias gobusterscan='curl -s https://raw.githubusercontent.com/PentestLich/Phylactery/refs/heads/main/gobuster/gobuster-scan.sh | bash -s'


# Optional: Print a confirmation message
echo "Aliases have been set up! Use the following commands:"
echo "  updatesystem"
echo "  nmapscan <target>"
echo "  gobusterscan <target> [wordlist]"
