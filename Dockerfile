FROM --platform=linux/amd64 python:3.8-slim

WORKDIR /app

COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Expose the port; this is adjusted in the ui.launch() method
EXPOSE 8000

# Run the application
CMD ["python3", "tutor.py"]
