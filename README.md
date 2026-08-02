# 🚀 Flask App Running with Docker

This project is a simple Flask application packaged and run inside a Docker container. Its purpose is to demonstrate how a Python app can be containerized and started in a clean and easy way.

## 📌 Project Overview

- The app is built with Flask
- The homepage is rendered from the template file templates/index.html
- The app runs on port 5000
- This project is ideal for learning Docker containerization basics

## 📁 Project Files

- app.py: Main Flask application file
- requirements.txt: Required Python dependencies
- templates/index.html: Homepage template
- Dockerfile: The recommended and optimal version for this project
- .Dockerfile: An older version with some inefficiencies

## 🐳 Dockerfile Explanation

This project contains more than one Dockerfile version:

### 1. Older Version (.Dockerfile)
- Based on Ubuntu
- Installs Python and pip manually
- Clones the project inside the container
- Less efficient and harder to maintain
- Useful for understanding the evolution of Docker images

### 2. Recommended Version (Dockerfile)
- Uses the Python slim base image
- Creates a smaller and lighter image
- Copies requirements first and installs dependencies
- Copies the rest of the project files afterward
- Exposes port 5000
- Starts the app with python app.py
- This is the best option for this project because it is cleaner and more efficient

## ✅ Why the Main Dockerfile Is Better

The main Dockerfile is better because it:

- Uses a smaller base image
- Builds faster
- Is easier to read and maintain
- Provides a clearer and more professional structure

## 🔧 Build the Image

Run the following command to build the image:

```bash
docker build -t flask-app .
```

## ▶️ Run the Container

Run the following command to start the container:

```bash
docker run -p 5000:5000 flask-app
```

## 🌐 Access the App

After the container starts, open your browser at:

```text
http://localhost:5000
```

## 💡 Important Notes

- This project is simple and intended for learning
- For production, Gunicorn is a better choice than python app.py
- Adding a .dockerignore file is a great step to reduce build size and speed up the build process

