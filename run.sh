# deleting image if it exists
# sudo docker stop jwr >> /dev/null
# sudo docker rm jwr >> /dev/null

# WARNING: ONLY RUN THIS WHEN YOU ARE SETTING UP JUPYTER NOTEBOOK FOR THE FIRST TIME OR ARE RESTORING 

# running image as daemon
sudo docker run \
	-p 8888:8888 \
	-d -it \
	--name jwr \
	jupyter/datascience-notebook
