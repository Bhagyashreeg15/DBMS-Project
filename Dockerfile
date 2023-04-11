# Use the official Jenkins base image as a parent image
FROM jenkins/jenkins:lts

# Switch to root user to install additional packages
USER root

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirement.txt

# Expose port 8000 for the Django development server
EXPOSE 8000
