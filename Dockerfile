# Use the official Python base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy the Flask app files into the container
COPY . /app

# Install necessary dependencies
RUN pip install --no-cache-dir Flask

# Expose the port Flask will run on
EXPOSE 5000

# Define environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run the Flask application
CMD ["flask", "run"]
