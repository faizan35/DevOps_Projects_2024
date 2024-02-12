# DevOps Projects

This repository contains a collection of DevOps projects covering various aspects of infrastructure provisioning, deployment automation, monitoring, and more.

## Table of Contents

- [DevOps Projects](#devops-projects)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Projects](#projects)
    - [Part I: Easy](#part-i-easy)
    - [Part II: Medium](#part-ii-medium)
    - [Part III: Hard](#part-iii-hard)
  - [Usage](#usage)
  - [Contributing](#contributing)

## Introduction

In this repository, you'll find a series of DevOps projects designed to improve your understanding and proficiency in various DevOps tools and practices. These projects are divided into three parts: Part I (Easy), Part II (Medium), and Part III (Hard), each increasing in complexity and depth.

## Projects

### Part I: Easy

1.  [**Dockerized Web Application Deployment with Jenkins**](./Part_I/01-Dockerized-App-Deployment-Jenkins/README.md)

    - Get code from Git repository.
    - Build Docker image for the web application.
    - Push the Docker image to Docker Hub.
    - Deploy the application by pulling the Docker image from Docker Hub.
    - Trigger Jenkins pipeline automatically upon new commits to the Git repository.

2.  [**Terraform State Management with AWS Backend**](./Part_I/02-Terraform-State-Management-AWS-Backend/README.md)

    - Define Terraform configurations to provision AWS infrastructure components (e.g., EC2 instances, VPC, subnets).
    - Execute Terraform commands to apply the configurations and provision the infrastructure.
    - Practice managing Terraform state and performing infrastructure changes.

3.  **Configuration Management with Ansible:**

    - Write Ansible playbooks to configure and manage software packages on remote servers.
    - Practice tasks like installing packages, managing files, and restarting services using Ansible modules.
    - Explore concepts like roles, variables, and conditionals in Ansible playbooks.

4.  **Setting Up Basic Monitoring with Prometheus and Grafana:**

    - Deploy Prometheus for monitoring.
    - Set up Grafana for visualization.
    - Configure Prometheus to scrape metrics from a simple service (e.g., nginx).
    - Create basic dashboards in Grafana to visualize the collected metrics.

5.  **Introduction to Kubernetes:**

    - Set up a local Kubernetes cluster using Minikube or Docker Desktop Kubernetes.
    - Deploy a simple application (e.g., nginx) to the Kubernetes cluster.
    - Practice basic Kubernetes commands like `kubectl apply`, `kubectl get pods`, `kubectl expose`, etc.
    - Explore concepts like Pods, Deployments, Services, and Ingresses in Kubernetes.

### Part II: Medium

6.  ...

### Part III: Hard

11. ...

## Usage

Each project directory contains detailed instructions on setting up and running the project. Refer to the README.md file within each project directory for specific guidance.

## Contributing

Contributions to this repository are welcome! If you have ideas for new projects, improvements to existing projects, or bug fixes, please feel free to open an issue or submit a pull request.
