# Dockerized Web Application Deployment with Jenkins

Automate the deployment of a web application using Docker and Jenkins.

## Description

This project aims to streamline the deployment process of a web application by utilizing Docker containers for packaging and Jenkins for continuous integration and deployment. By automating the building, pushing, and deployment of Docker images, developers can focus more on coding and less on manual deployment tasks.

## Project Breakdown

1.  A simple web application project. [Todo App](https://github.com/faizan35/todo-app-python.git)
2.  Retrieve code from Git repository.
3.  Build Docker image for the web application.
4.  Push the Docker image to Docker Hub.
5.  Deploy the application by pulling the Docker image from Docker Hub.
6.  Trigger Jenkins pipeline automatically upon new commits to the Git repository.

## Tools Used

- Git
- Docker
- Docker Hub
- Jenkins

## Tasks

1. Set up a Git repository for the web application.
2. Configure Jenkins pipeline for automated builds.
3. Write Dockerfile for defining the application environment.
4. Implement Docker build process within Jenkins pipeline.
5. Configure Docker Hub credentials in Jenkins for image pushing.
6. Integrate Docker push command in the Jenkins pipeline.
7. Set up deployment environment (e.g., Kubernetes, Docker Swarm).
8. Pull the Docker image from Docker Hub to deployment environment.
9. Deploy the application using appropriate deployment strategies.
10. Configure Git webhook to trigger Jenkins pipeline upon new commits.

## Additional Notes
