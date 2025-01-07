# Use the official Python image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project to the container
COPY . .

# Expose the desired port (optional, for Flask/Django apps)
EXPOSE 8000

# Set the default command to run your app
CMD ["python", "src/main.py"]
