#!/bin/bash

# installs the service by creating links into the /etc/systemd/system directory
sudo cp ./jwr.service /etc/systemd/system/jwr.service
sudo cp ./jwr.timer /etc/systemd/system/jwr.timer

sudo systemctl enable jwr.timer
sudo systemctl start jwr.timer


