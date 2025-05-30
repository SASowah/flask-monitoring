# Flask Monitoring Stack (CI/CD Automated)

This project is a **Docker-based Flask Monitoring Stack** deployed on **AWS Lightsail**, fully automated with **Ansible** and **Jenkins CI/CD**.

---

## Project Overview

**Tech Stack**:
- Flask (Python)
- Gunicorn (WSGI server)
- NGINX (Reverse Proxy)
- Prometheus (Metrics collection)
- Grafana (Visualization)
- Docker & Docker Compose
- Ansible (Configuration Management)
- Jenkins (CI/CD)
- AWS Lightsail (Hosting)

---

## Directory Structure

```
flask-monitoring
├── ansible/
│   ├── inventory/
│   │   └── hosts.ini
│   ├── roles/
│   │   ├── flask_app/
│   │   └── grafana/
│   │   ├── prometheus/
│   │   └── grafana/
│   │   └── nginx/
│   └── site.yml
└── terraform
└── Jenkinsfile
```

---

## CI/CD Workflow

- Code pushed to GitHub (dev branch)
- Jenkins pulls code, builds Docker image, pushes to DockerHub
- Ansible playbook is triggered from Jenkins to configure and deploy containers on Lightsail
- All services run under Docker Compose and restart automatically

---

## Dashboards

- **Grafana** is connected to **Prometheus**
- Dashboards include:
  - CPU & Memory Usage
  - Request Rate by Status Code
  - Error Rate
  - 95th Percentile Response Time

---

##  Deployment URL

Prometheus: `http://<Lightsail-IP>:9090`  
Grafana: `http://<Lightsail-IP>:3000`  
Flask App: `http://<Lightsail-IP>` (served via NGINX)

