#  <img src="https://github.com/user-attachments/assets/a1719985-afe6-4550-9fac-54e19bdc995f" width="50" style="vertical-align: middle;">Deploying a simple Weather App built with Js using CI/CD pipline :  Jenkins, Docker, and SonarQube & AWS EC2 instances.

## Overview

This project demonstrates a complete CI/CD pipeline built using **Jenkins**, **Docker**, and **SonarQube** deployed on **AWS EC2 instances** associated with **Elastic IPs** . The pipeline automates the deployment of a mini website and incorporates code quality checks using SonarQube.

<img width="300" alt="n" src="https://github.com/user-attachments/assets/86c4e493-6dab-4d69-ba9c-9f5ab5800676">

[Visit my website](http://3.81.199.68/)




## Project Architecture

- **Two EC2 Instances**:
  - **EC2 Instance 1**: Hosts **Jenkins** and **Docker**.
  - **EC2 Instance 2**: Hosts **SonarQube** for static code analysis.

- **Technologies used**:
  - **Jenkins**: To automate the pipeline.
  - **Docker**: To containerize the website.
  - **SonarQube**: For code quality checks.
  - **GitHub**: As the source code repository, integrated with Jenkins via a webhook.



##  <img src="https://github.com/user-attachments/assets/ddf7ac8e-6d1e-4658-960d-f0e646bb8a66" width="30" style="vertical-align: middle;">  Project Setup

### 1. AWS EC2 Instances Setup

- **EC2 Instance 1**: 
  - **Docker and Jenkins** were installed on this instance.
  - Jenkins was configured to use Docker to build, test, and deploy the website.

- **EC2 Instance 2**:
  - **SonarQube** was installed on this instance for static code analysis.
  - SonarQube was configured with Jenkins to automatically scan the code during each build.



### 2. GitHub Webhook Configuration & SonarQube Integration with Jenkins 
- **GitHub webhook**: was configured to trigger Jenkins builds automatically whenever there is a change in the repository, To enable continuous integration.
- **SonarQube** :  integrated into the Jenkins pipeline. During each build, SonarQube runs static analysis on the code and provides reports on bugs, code smells, and security vulnerabilities,To ensure code quality


### 4. Adding Jenkins to Docker Group

To allow Jenkins to manage Docker containers without requiring `sudo`, which means running Docker commands directly as part of the pipeline:

```bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
```




### 5. Installing Docker Components in Jenkins

To use Docker in Jenkins pipelines, several components needed to be installed on the EC2 instance hosting Jenkins.
  - Install the **Docker Pipeline plugin** and **Docker Commons plugin**in Jenkins to manage Docker containers from the pipeline.



### 6. Jenkins Pipeline Script (`Jenkinsfile`)

The Jenkins pipeline was configured using a **Declarative Pipeline** syntax. The pipeline consists of multiple stages including:

1. **Build**: Builds the Docker image of the website.
2. **Test**: Runs SonarQube analysis to check code quality.
3. **Deploy**: Deploys the website using Docker.
 
<img width="661" alt="nn" src="https://github.com/user-attachments/assets/228e3100-9fc5-4f09-9c9a-1c4be222bb8c">

