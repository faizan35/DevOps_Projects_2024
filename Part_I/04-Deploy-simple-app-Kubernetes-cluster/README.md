# Deploying a Simple App on Kubernetes Cluster

## Description

This project aims to set up a Kubernetes cluster using Kubeadm and deploy a simple application onto the cluster. Basic Kubernetes commands will be practiced, and key concepts such as Pods, Deployments, Services, and Ingresses will be explored.

## Project Breakdown

1.  Setting up the Kubernetes cluster using Kubeadm.
2.  Deploying a simple application (e.g., nginx) onto the Kubernetes cluster.
3.  Practicing basic Kubernetes commands like `kubectl apply`, `kubectl get pods`, `kubectl expose`, etc.
4.  Exploring concepts like Pods, Deployments, Services, and Ingresses in Kubernetes.

## Tools Used

- Kubeadm
- Kubernetes
- Docker
- Nginx (for the simple application)

## Tasks

1.  **Set up Kubernetes Cluster with Kubeadm:**

    - Install Docker.
    - Install Kubeadm, Kubelet, and Kubectl.
    - Initialize the Kubernetes control plane node with `kubeadm init`.
    - Join worker nodes to the cluster using `kubeadm join`.

2.  **Deploy Simple Application to Kubernetes Cluster:**

    - Write a YAML file describing the deployment of the simple application (e.g., nginx).
    - Use `kubectl apply -f <yaml-file>` to deploy the application.

3.  **Practice Basic Kubernetes Commands:**

    - Use `kubectl apply` to apply configuration changes to resources.
    - Use `kubectl get pods` to get information about running pods.
    - Use `kubectl expose` to expose a service outside of the cluster.
    - Use `kubectl scale` to scale the number of replicas of a deployment.

4.  **Explore Kubernetes Concepts:**

    - Understand Pods, which are the smallest deployable units in Kubernetes.
    - Learn about Deployments, which manage a set of identical pods.
    - Explore Services, which define policies for accessing sets of pods.
    - Understand Ingresses, which manage external access to services in a cluster.

## Additional Notes

- Familiarity with Linux command line interface (CLI) is helpful.
- Basic understanding of Docker containers and containerization concepts is beneficial.

## Resources

- Kubernetes documentation
- Docker documentation
