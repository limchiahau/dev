FROM continuumio/anaconda3:2020.02

# update apt-get database
RUN apt-get update


# install usefull tools
RUN apt-get install sqlite3


# add new user
# RUN useradd -ms /bin/bash newuser
# WORKDIR /home/newuser
# USER newuser
