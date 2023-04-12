# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

ENV DOCKER_HOST tcp://44.203.130.145:8000

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container and install dependencies
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

# Copy the source code into the container
COPY . .

# Expose port 8000 for the Django application to run on
EXPOSE 8000
