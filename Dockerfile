# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /classification-pytorch

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Create necessary directories
RUN mkdir -p /classification-pytorch/plots

# Copy the rest of the resources and code into the container
COPY . .

# Command to run the test
CMD ["python", "main.py"]
