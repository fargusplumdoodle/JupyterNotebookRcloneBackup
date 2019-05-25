# Jupyter to Rclone
This project is to familiarize myself with systemd and its units/timers/services.

Backup script works assuming you have configured rclone. 
Defaults:
- GoogleDrive directory: JupyterNotebookBackup
- Rclone config name: isaac

# Systemd timer
in the systemd directory there is the jwr.serivce, jwr.timer, and install_service.sh

install service copies the service and timer into /etc/systemd/system/
then enables and starts the timer. 

By default the timer will run the backup everyday at noon.

# restore procedure
make a new jupyter/datascience-notebook container named jwr and use docker cp to copy your backed up files into the directory /home/jovyan/
I have left the run.sh file in the repo for that purpose
