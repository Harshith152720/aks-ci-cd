# Use lightweight nginx image
FROM nginx:alpine

# Copy your quiz file into NGINX's web root
COPY aks-quiz.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Default command
CMD ["nginx", "-g", "daemon off;"]
