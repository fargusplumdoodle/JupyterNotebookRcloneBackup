#!/bin/bash

# copying files over to host
sudo docker cp jwr:/home/jovyan/ ./

# setting permissions
sudo chown fargus:fargus ./**

# backup to google drive
python3 backup.py
