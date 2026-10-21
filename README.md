\# Platform Engineering Practice Project



A beginner project to learn how to deploy and manage an application using Docker, Kubernetes, and Terraform.



\## Technologies

\- Python (FastAPI)

\- Docker

\- Kubernetes (Minikube)

\- Terraform

\- GitHub Actions



\## Features

\- Created a simple API with a health-check endpoint.

\- Ran the application using Docker.

\- Deployed the application on Kubernetes.

\- Used Terraform to create Kubernetes resources and scale replicas.

\- Set up a GitHub Actions workflow for CI.



\## Run Locally



Install dependencies:



```bash

python -m pip install -r requirements.txt

```



Start the application:



```bash

python -m uvicorn app.main:app --reload

```



Open `http://127.0.0.1:8000/health` to check the application.



## GitOps with ArgoCD

- Connected the GitHub repository to ArgoCD to manage Kubernetes manifests from Git.
- Enabled automated synchronization and self-healing to reconcile cluster resources with the desired state in Git.
- Verified GitOps by changing the deployment from 2 to 3 replicas through a Git commit and confirming that ArgoCD restored 3 replicas after a manual scaling change.

