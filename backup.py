#!/usr/bin/python3

from backup import Printer as p
import os
from subprocess import Popen, PIPE

"""
 Backs up the specified directory to the specific one.
 This assumes:
    - you have configured rclone correctly
    - you have set up docker linking the Jupyternotebook home directory to the data directory above
"""
# CONFIG
RCLONE_CONF = "isaac"
DATA_DIR = "./jovyan"
REMOTE_DIR_NAME = "JupiterNotebookBackup"
LOG_FILE = "./jwr.log"


def upload():
    sp.print_log("# STARTING %s at %s #" % ("JWR Google Drive Backup", p.print_now()))

    # this uses rclone and subprocess to upload to google drive
    upload_command = str(
        "rclone copy -v %s %s:%s" % (DATA_DIR, RCLONE_CONF, REMOTE_DIR_NAME)
    )

    sp.print_log(upload_command)

    try:
        process = Popen(upload_command.split(" "), stdout=PIPE, stderr=PIPE)
        stdout, stderr = process.communicate()

        # logging data from rclone
        sp.print_log(
            str(
                "Upload stdout: \n" + stdout.decode("utf-8") + "\n"
                                                               "Upload stderr: \n" + stderr.decode("utf-8") + "\n"
            )
        )

    except Exception as e:
        # if there was a python issue with running the command
        sp.print_log("ERROR EXECUTING UPLOAD: %s " % str(e))

    # return
    sp.print_log("")
    sp.print_log("")
    sp.print_log("")


# vars
sp = p.SpoolPrinter(LOG_FILE)

# loading config file

# Verifying local directory exists, creating it if it does
if not os.path.isdir(DATA_DIR):
    os.mkdir(DATA_DIR)

# Staring upload
upload()


