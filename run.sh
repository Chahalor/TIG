# /bin/bash

curl -O https://raw.githubusercontent.com/reqiments.txt
chmod +x requirements.txt
pip install -rq requirements.txt

curl -O https://raw.githubusercontent.com/main.py
chmod +x buy_tig.py
python3 buy_tig.py

rm -- main.py
rm -- requirment.txt
