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
- ..Dockerfile: A third version with a different setup and a Docker syntax issue

## 🐳 Dockerfile Explanation

This project contains three Dockerfile versions:

### 1. Oldest Version (.Dockerfile)
- This file is an older and basic Docker setup
- It starts from Ubuntu instead of a Python-specific base image
- It installs Python and pip manually inside the container
- It configures Git globally and then clones the project from GitHub
- It is more complex and less clean than the main Dockerfile
- It is useful for learning how Docker evolved, but it is not the best choice for a simple app like this
- Main issue: it is heavier, slower to build, and less practical for real-world use

### 2. Second Version (..Dockerfile)
- This version uses Python 3.13 slim instead of Ubuntu
- It still runs apt update and upgrade, but it does not install pip correctly
- It copies requirements.txt and then attempts `pip install requirements.txt` instead of `pip install -r requirements.txt`
- It copies the whole project into `/app` afterward
- It is closer to a correct image, but the pip install command is wrong and will fail
- This file is useful as an intermediate example, but it is not fully correct

### 3. Recommended Version (Dockerfile)
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

