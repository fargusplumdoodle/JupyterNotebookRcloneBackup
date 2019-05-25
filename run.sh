# deleting image if it exists
sudo docker stop jwr >> /dev/null
sudo docker rm jwr >> /dev/null

# running image as daemon
sudo docker run \
	-p 8888:8888 \
	--name jwr \
	jupyter/datascience-notebook
	#-v /home/fargus/Scripts/jupyter_with_rclone/data:/home/jovyan/ \
	#jupyter/scipy-notebook:17aba6048f44
	# -d -it \
