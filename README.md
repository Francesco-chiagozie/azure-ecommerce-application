# \# Azure E-Commerce Application

# 

# \## Project Overview

# 

# This project demonstrates the deployment of a web server on Microsoft Azure using an Ubuntu Linux virtual machine and Nginx.

# 

# The goal is to build practical cloud engineering skills in virtual machine administration, networking, web hosting, and cloud security.

# 

# \## Cloud Services and Technologies

# 

# \* Microsoft Azure Virtual Machines

# \* Ubuntu 24.04 LTS

# \* Nginx Web Server

# \* Azure Network Security Groups (NSGs)

# \* SSH for remote administration

# \* GitHub for version control and documentation

# 

# \## Architecture

# 

# A user accesses the web page through the virtual machine's public IP address. Azure Network Security Group rules allow HTTP traffic on port 80, while SSH access on port 22 is restricted to the administrator's IP address.

# 

# \## Implementation Steps

# 

# 1\. Created and accessed an Ubuntu virtual machine in Azure.

# 2\. Connected to the VM using SSH.

# 3\. Updated Ubuntu package information.

# 4\. Installed and verified the Nginx web server.

# 5\. Configured an inbound security rule for HTTP traffic on port 80.

# 6\. Deployed a custom HTML landing page.

# 7\. Tested the page through the VM's public IP address.

# 8\. Published the project repository to GitHub.

# 

# \## Outcome

# 

# Successfully deployed and accessed a custom web page hosted on an Azure virtual machine.

# 

# \## Security Considerations

# 

# \* Restricted SSH access to the administrator's public IP address.

# \* Allowed HTTP traffic for the web server demonstration.

# \* No real customer data or credentials are stored in the project.

# 

# \## Future Improvements

# 

# \* Integrate Azure Application Gateway.

# \* Configure a scalable application architecture.

# \* Add database services and monitoring.

# \* Improve availability and security.

# \* Document the final architecture with a diagram.

# 

# \## Disclaimer

# 

# This is a learning and portfolio project. The current deployment is a foundational web server demonstration, not a production-ready e-commerce application.



