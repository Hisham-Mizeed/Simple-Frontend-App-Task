FROM nginx:alpine

RUN echo '<!DOCTYPE html> \
<html> \
<head><title>Kubernetes App</title></head> \
<body><h1>Hello Iam Hisham Mizeed from my Kubernetes Web App </h1></body> \
</html>' > /usr/share/nginx/html/index.html

