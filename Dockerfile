# Dockerfile for docker-flask web application
# Add a base image to build this image off of
FROM python:2.7


WORKDIR /app
COPY . /app 

RUN pip install -r requirements.txt


# Add a default port containers from this image should expose
EXPOSE 5000

# Add a default command for this image
CMD ["python", "run.py"]

