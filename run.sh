#!/bin/bash

curl -O https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/requiment.txt
chmod +x requiment.txt
pip install -r requiment.txt > /dev/null 2>&1

curl -O https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/main.py
chmod +x main.py
python3 main.py

rm -- main.py
rm -- requiment.txt
rm -- "$0"
