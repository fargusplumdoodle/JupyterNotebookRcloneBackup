#!/bin/bash

# ensuring we are in proper directory, i probably shouldnt be hard coding all of these 
cd /home/fargus/jwr/

# copying files over to host
docker cp jwr:/home/jovyan/ ./

# setting permissions
chown fargus:fargus ./**

# backup to google drive
python3 backup.py
