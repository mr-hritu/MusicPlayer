FROM nikolaik/python-nodejs:python3.9-nodejs16

# Updating Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

# Running Music Player Bot
RUN python3 main.py
