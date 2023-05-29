# Specify the base image
# FROM continuumio/miniconda3
FROM tensorflow/tensorflow:latest

# # Update the package manager and install a simple module. The RUN command
# # will execute a command on the container and then save a snapshot of the
# # results. The last of these snapshots will be the final image
RUN apt-get update -y && apt-get install -y graphviz

# Make sure the contents of our repo are in /app
COPY . /app

# Specify working directory
WORKDIR /app

# Install additional Python packages
RUN pip install -r requirements.txt
# RUN conda install --file requirements.txt

# Install python packages for the lectures
# RUN conda install RISE
RUN pip install RISE

# Use CMD to specify the starting command
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", \
     "--ip=0.0.0.0", "--allow-root"]
