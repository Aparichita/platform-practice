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



