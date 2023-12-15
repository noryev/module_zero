# Use an image with Python and GPU support
FROM nvidia/cuda:latest

# Set working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Install Python and any necessary Python packages
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install --no-cache-dir -r requirements.txt

# Set the default command for the container
CMD ["python3", "/app/train.py", "--prompt", "{{.Prompt}}", "--steps", "{{.Steps}}"]
