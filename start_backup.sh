#!/bin/bash

# copying files over to host
sudo docker cp jwr:/home/jovyan/ ./

# backup to google drive
sudo python3 backup.py
