# Jupyter Notebook Server / Development Environment

Author's Homepage  
[link](https://limchiahau.github.io/)

This repository provide the means to create a anaconda based jupyter notebook
server and development environment.

## Usage
Refer to the image at:  
[dockerhub](https://hub.docker.com/r/chl0/dev)

> # Replace "path" with the path to your project
> podman run -p 8888:8888 -v "path":/home/newuser/app:Z chl0/dev

This will start the jupyter notebook server at localhost:8888.

> podman run -v $PWD:/home/newuser/app:Z chl0/dev /bin/bash

This will start a new bash session with the default anaconda library and tools in the current directory.  

Note: This command wont work if your running it from ~. 

## Preserving Jupyter Notebook Token
To ensure that the token of the running jupyter server is the same for all containers consider binding a volume to /root/.local/share/jupyter/runtime
