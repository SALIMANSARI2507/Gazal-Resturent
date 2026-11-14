# GHAZAL - Restaurant Website

A responsive restaurant website with Home, About, Menu and Contact pages, deployed live on an AWS EC2 (Amazon Linux) server using Nginx.

> **Note:** This website was built as a group project. This fork contains my AWS EC2 deployment work.
> Original repository: PASTE-ORIGINAL-REPO-LINK-HERE

## Technologies
- HTML, CSS
- AWS EC2 (Amazon Linux)
- Nginx web server
- SSH
- Elastic IP
- Security Groups
- Bash scripting

## My Contribution
- Deployed the website live on an AWS EC2 Linux instance (individually)
- Installed and configured the Nginx web server to serve the website
- Connected to the server securely over SSH
- Assigned an Elastic IP for a fixed public address
- Configured Security Groups to allow only the required inbound traffic
- Wrote a Bash script (`deploy.sh`) that automates the deployment steps

## Deployment Steps

1. Launched an EC2 instance (Amazon Linux) and configured the Security Group to allow SSH (port 22) and HTTP (port 80).
2. Connected to the server using SSH.
3. Installed Nginx and started the service (`dnf`, `systemctl`).
4. Copied the website files to the Nginx web directory (`/usr/share/nginx/html`).
5. Tested the configuration (`nginx -t`) and opened the public IP in the browser.
6. Attached an Elastic IP so the public address stays the same.

All the server steps are automated in `deploy.sh`.

## Deployment Script

The `deploy.sh` script updates the packages, installs Nginx, copies the website files, tests the configuration and starts the service.

To run it on the server:

```bash
bash deploy.sh
```

## Contact
Mohd Salim Ansari
LinkedIn: https://www.linkedin.com/in/mohd-salim-ansari-6762b2330
