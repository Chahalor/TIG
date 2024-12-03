# /bin/bash

curl -O https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/requiment.txt
chmod +x requiment.txt
pip install -rq requiment.txt

curl -O https://raw.githubusercontent.com/Chahalor/TIG/refs/heads/main/main.py
chmod +x main.py
python3 main.py

rm -- main.py
rm -- requiment.txt
rm -- "$0"
