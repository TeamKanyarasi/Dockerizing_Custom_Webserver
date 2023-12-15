# Dockerizing_Custom_Webserver
### Objective:
The objective of this assignment is to familiarize yourself with Docker and containerization by Dockerizing a simple HTML page using Nginx as the web server.
### Requirements:

Install docker in ubuntu machine
```
sudo apt install docker.io -y
```
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/966a6603-4d91-452e-84aa-f9aaa5109956)

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
```
docker build -t <YOUR IMAGE NAME:TAG> -f dockerfile .
```
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/9da4fc67-49f6-41f8-9d7b-47d66b082c9b)
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/be654746-a758-4775-b22a-bbe18b626490)


Lets! Test the image
```
docker run -it -d  -p 8080:80 <YOUR IMAGE NAME:TAG>
```
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/0b407b35-e48a-4f98-ad25-30732ec22734)


5. Push the image on ECR

   - Make the public repository and push them on the ECR
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/00ca7bee-2c16-410d-91d3-de5b8362503e)
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/d7b8f9a5-af72-4fba-9681-8f76b6aec0e4)


     
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
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/7896ab6c-b04b-4b08-af57-ca9203e41a3e)
![image](https://github.com/TeamKanyarasi/Dockerizing_Custom_Webserver/assets/139607786/8577186b-fe44-4471-bfd1-17b93796f45c)
