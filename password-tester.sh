#!/bin/bash
filename='password-list.txt'
n=1
while read line; do
# reading each line
echo line number $n:
gpg --passphrase $line --pinentry-mode loopback --import 7path/to/secretkey.sec
n=$((n+1))
done < $filename
