FROM python:3.11-rc-slim-bullseye

# -------------------------------
# package
#
RUN apt-get update
RUN apt-get  install -y build-essential libffi-dev
# RUN apk add build-base 

# -------------------------------
# Python
#
RUN pip install wheel setuptools pip --upgrade
RUN python -m pip install jupyterlab

# -------------------------------
# ClearML
#
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install pandas scikit-learn
