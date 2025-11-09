#!/bin/bash
while IFS= read -r username; do
    if grep -q "^$username:" /etc/passwd; then
        echo "$username exists in /etc/passwd"
    fi
done < abc.txt
