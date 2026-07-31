# Start from Python Base Image
FROM python:3.14-slim

# Update and Upgrade System Libs & Packages
RUN apt update -y && apt upgrade -y && rm -rf /var/lib/apt/lists/*

# Change the Current Working Directory to -> /app
WORKDIR /app

# Copy Requirements Text File from Build Context to Work Directory
COPY ./requirements.txt ./

# Install the Application Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Project Files into Working Directory
COPY ./ ./

# Publish Application Port (Num.5000)
EXPOSE 5000

# The Command which will be PID(1)
ENTRYPOINT ["python"]
CMD ["app.py"]

# Image Metadata
LABEL org.opencontainers.image.title="Simple Flask App Image"
LABEL org.opencontainers.image.maintainer="Eng.Yosef Zaher"
LABEL org.opencontainers.image.version="1.0"
