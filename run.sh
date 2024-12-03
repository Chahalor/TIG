# /bin/bash

curl -O https://raw.githubusercontent.com/reqiments.txt
chmod +x requirements.txt
pip install -rq requirements.txt

curl -O https://raw.githubusercontent.com/buy_tig.py
chmod +x buy_tig.py
python3 buy_tig.py

rm -- buy_tig.py
rm -- requirment.txt
