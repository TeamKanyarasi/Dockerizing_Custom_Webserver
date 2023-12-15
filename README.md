# Dockerizing_Custom_Webserver
### Objective:
The objective of this assignment is to familiarize yourself with Docker and containerization by Dockerizing a simple HTML page using Nginx as the web server.
### Requirements:

Install docker in ubuntu machine
```
sudo apt install docker.io -y
```
1. Basic HTML Page:

   - Create a plain HTML page named `index.html` with some content (e.g., "Hello, Docker!").

2. Nginx Configuration:

   - Create an Nginx configuration file named `nginx.conf` that serves the `index.html` page.

   - Configure Nginx to listen on port 80.

3. Dockerfile:

   - Create a `Dockerfile` to define the Docker image.

   - Use an official Nginx base image.

   - Copy the `index.html` and `nginx.conf` files into the appropriate location in the container.

   - Ensure that the Nginx server is started when the container is run.

4. Building the Docker Image:

   - Build the Docker image using the `Dockerfile`.

5. Push the image on ECR

   - Make the public repository and push them on the ECR
     
5.1. Install AWS CLI to push the image on ECR
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

apt install unzip
unzip awscliv2.zip
sudo ./aws/install
aws --version

```
5.2. AWS configure to access the aws account to run CLI commands 
```
aws configure
```
