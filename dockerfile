# Start from a PyTorch base image
FROM pytorch/pytorch:latest

# Set the working directory
WORKDIR /app

# Install Python dependencies including Replicate client
COPY requirements.txt .
RUN pip install replicate --no-cache-dir -r requirements.txt && \
    pip install replicate

# Set the Replicate API token as an environment variable (Replace with your actual token)
ENV REPLICATE_API_TOKEN=r8_HHg0Jp64KGtt9vc3gKfaxo6L2bbiThy1K2aSJ

# Copy the Stable Diffusion model and other necessary files
COPY . /app

# Copy your Python script that uses Replicate to run Stable Video Diffusion
COPY run_stable_diffusion.py /app

# Set the default command for the container
CMD ["python", "run_stable_diffusion.py"]
