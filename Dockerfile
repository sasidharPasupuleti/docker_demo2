FROM python:3.8-slim

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the analysis script into the container
COPY run_me.py .

# Set up directories for input and output
VOLUME ["/app/input", "/app/output"]

#CMD ["python", "./run_me.py"]
