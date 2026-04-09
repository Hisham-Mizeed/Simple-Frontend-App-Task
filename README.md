# Web App (Nginx)

A simple Dockerized web application built using **Nginx Alpine image** that serves a static HTML page.

## 📌 Project Description

This project demonstrates a minimal Docker setup to run a static web page using Nginx.
The HTML content is embedded directly inside the Dockerfile.

When the container runs, it displays:

> "Hello I am Hisham Mizeed from my Kubernetes Web App"

---

## 📥 Clone Repository

git clone https://github.com/Hisham-Mizeed/Simple-Frontend-App.git
https://github.com/Hisham-Mizeed/Simple-Frontend-App.git
cd Multistage-Dockerfile-Task

## 🐳 Dockerfile

```dockerfile
FROM nginx:alpine

RUN echo '<!DOCTYPE html> \
<html> \
<head><title>Kubernetes App</title></head> \
<body><h1>Hello Iam Hisham Mizeed from my Kubernetes Web App </h1></body> \
</html>' > /usr/share/nginx/html/index.html
```

---

## 🚀 How to Run

### 1. Build the Docker image

```bash
docker build -t kubernetes-web-app .
```

### 2. Run the container

```bash
docker run -d -p 8080:80 kubernetes-web-app
```

### 3. Open in browser

```
http://localhost:8080
```

---

## ☸️ Kubernetes (Optional)

You can deploy this container to Kubernetes using a simple deployment and service.

### Example Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-web-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx-web-app
  template:
    metadata:
      labels:
        app: nginx-web-app
    spec:
      containers:
      - name: nginx
        image: kubernetes-web-app
        ports:
        - containerPort: 80
```

---

## 📂 Project Structure

```
.
├── Dockerfile
└── README.md
```

---

## 🎯 Purpose

* Learn Docker basics
* Understand Nginx container usage
  
---

## 👨‍💻 Author

Hisham Mizeed
