# Dockerfile

# inherit from this "empty base image", see https://hub.docker.com/_/python/
# FROM python:3.10-alpine
FROM python:3.10-slim-bullseye

# take some responsibility for this container
LABEL org.opencontainers.image.authors="Adam Szydlo <adamszydlo@gmail.com>"

# directory to install the app inside the container
WORKDIR /usr/src/app

# install python dependencies, this will be cached if the requirements.txt file does not change
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

# copy application source code into container
COPY app.py .

# drop root privileges when running the application
USER 1001

# run this command at run-time
CMD [ "python", "app.py" ]

# expose this TCP-port
EXPOSE 8081
# ENTRYPOINT ["python3", "app.py"]