# 🚀 Slurm-as-a-Pod: Containerized HPC Cluster on Kubernetes
A production-style implementation of a mini Slurm HPC cluster deployed inside a multi-node Kubernetes environment using Minikube.  
This project demonstrates how traditional HPC schedulers can be adapted to cloud-native container orchestration platforms.

## 🏗 Architecture

Minikube Multi-Node Cluster
│
├── slurm-controller (Pod)
└── slurm-worker (StatefulSet)
      ├── slurm-worker-0
      └── slurm-worker-1

Features:
- Shared Munge authentication via Kubernetes Secret
- Headless Services for stable DNS
- Privileged worker pods for cgroup compatibility
- StatefulSet for persistent node identity

## ⚡ Engineering Challenges Solved

- Resolved cgroup namespace limitations in containerized environments
- Implemented shared Munge authentication using Kubernetes Secrets
- Configured Slurm without proctrack/cgroup plugin for compatibility
- Designed stable hostname-based cluster communication using StatefulSets
- Ensured restart-safe cluster behavior

kubernetes
slurm
hpc
minikube
containerization
devops
distributed-systems
cloud-native
