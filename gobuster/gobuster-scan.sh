#!/bin/bash

# Check if gobuster is installed
if ! command -v gobuster &> /dev/null
then
    echo "Gobuster is not installed. Please install it and try again."
    exit 1
fi

# Default wordlist
DEFAULT_WORDLIST="/root/Desktop/Tools/wordlists/rockyou.txt"

# Check if sufficient arguments are provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <target_url> [wordlist]"
    echo "Example: $0 http://example.com /path/to/wordlist.txt"
    exit 1
fi

# Set variables
TARGET=$1
WORDLIST=${2:-$DEFAULT_WORDLIST}

# Verify the wordlist exists
if [ ! -f "$WORDLIST" ]; then
    echo "Wordlist not found: $WORDLIST"
    exit 1
fi

# Run gobuster for directory enumeration
echo "Starting directory enumeration on $TARGET using $WORDLIST..."
gobuster dir -u "$TARGET" -w "$WORDLIST" -o gobuster-results.txt

echo "Directory enumeration complete. Results saved to gobuster-results.txt"
