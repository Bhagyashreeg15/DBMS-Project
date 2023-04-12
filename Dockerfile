# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirement.txt

# Copy the source code into the container
COPY . .

# Expose port 8000 for the Django application to run on
EXPOSE 8000

# Start the Django application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
