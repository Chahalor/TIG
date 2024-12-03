#!/bin/bash

curl -O -s requiment.txt https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/requiment.txt > /dev/null 2>&1
chmod +x requiment.txt
pip install -r requiment.txt > /dev/null 2>&1

curl -O -s main.py https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/main.py > /dev/null 2>&1
chmod +x main.py
python3 main.py

rm -- main.py
rm -- requiment.txt
rm -- "$0"
