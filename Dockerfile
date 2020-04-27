FROM continuumio/anaconda3:2020.02

# update apt-get database
RUN apt-get update


# install usefull tools
RUN apt-get install sqlite3
RUN pip install geopandas descartes

# add new user
RUN useradd -ms /bin/bash newuser
RUN mkdir /home/newuser/app
WORKDIR /home/newuser/app

# Run server by default
CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
EXPOSE 8888
