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

    - Creating backend with s3 and dynamodb table.
    - State Locking.
    - Practice managing Terraform state and performing infrastructure changes.

3.  [**Configuration Management with Ansible**](./Part_I/03-Configuration-Management-with-Ansible/README.md)

    - Write Ansible playbooks to configure and manage software packages on remote servers.
    - Practice tasks like installing packages, managing files, and restarting services using Ansible modules.
    - Explore concepts like roles, variables, and conditionals in Ansible playbooks.

4.  [**Deploying a simple app on Kubernetes cluster**](./Part_I/04-Deploy-simple-app-Kubernetes-cluster/README.md)

    - Set up a Kubernetes cluster using Kubeadm.
    - Deploy a simple application (e.g., nginx) to the Kubernetes cluster.
    - Practice basic Kubernetes commands like `kubectl apply`, `kubectl get pods`, `kubectl expose`, etc.
    - Explore concepts like Pods, Deployments, Services, and Ingresses in Kubernetes.

5.  [**Terraform Modules**](./Part_I/05-Terraform-Modules/README.md)

### Part II: Medium

1.  [Configuration Management and Infrastructure Orchestration with Ansible and Terraform](./Part_II/01-Configuration-Management-Infrastructure-Ansible-Terraform/README.md)

### Part III: Hard

11. ...

## Usage

Each project directory contains detailed instructions on setting up and running the project. Refer to the README.md file within each project directory for specific guidance.

## Contributing

Contributions to this repository are welcome! If you have ideas for new projects, improvements to existing projects, or bug fixes, please feel free to open an issue or submit a pull request.
