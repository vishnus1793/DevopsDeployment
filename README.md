# DevopsDeployment 🚀
This repository demonstrates a simple **DevOps deployment workflow** using **Terraform** and **Docker**. It is designed as a starting point for automating infrastructure provisioning and application deployment.

## ⚙️ Features
- **Terraform (Infrastructure as Code):** Provisions infrastructure defined in `main.tf` (can be extended for AWS, GCP, or Azure).  
- **Docker (Containerization):** Builds an image from the `Dockerfile` to provide a consistent runtime environment.  
- **CI/CD (CircleCI):** Automates build, test, and deployment pipelines for reliable and repeatable deployments.  

## 🛠️ Getting Started
### Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads)  
- [Docker](https://docs.docker.com/get-docker/)  
- [CircleCI](https://circleci.com/) (optional, for running pipelines)  

### Steps
```bash
# 1. Clone the repository
git clone https://github.com/vishnus1793/DevopsDeployment.git
cd DevopsDeployment

# 2. Build the Docker image
docker build -t devops-deployment .

# 3. Run the container
docker run -d -p 8080:8080 devops-deployment

# 4. Deploy infrastructure with Terraform
terraform init
terraform plan
terraform apply
