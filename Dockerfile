# Dockerfile for docker-flask web application

# Add a base image to build this image off of
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY run.py /usr/src/app/


# Add a default port containers from this image should expose
EXPOSE 5000

# Add a default command for this image
CMD ["python", "/usr/src/app/run.py"]

