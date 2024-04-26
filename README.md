

# Bug Red Button: Upcommerce Resilience Tools


### *This repository contains two projects designed to enhance the stability and resilience of Upcommerce:*

1) Upcommerce Bug Red Button - Failsafe Alerting with JIRA, Grafana, and PagerDuty

Problem: The existing ticketing system for Upcommerce alert management has limitations, including recurring obsolete issues and a lack of clear prioritization.
 *  Solution: The Bug Red Button implements a failsafe alerting mechanism that integrates with JIRA, Grafana, and PagerDuty.

    * JIRA: Creates tickets for critical incidents, ensuring a documented record for development teams.
    * Grafana: Provides customizable dashboards for visual representation of issues, aiding in faster diagnosis.
    * PagerDuty: Triggers notifications via PagerDuty for high-priority alerts, ensuring timely intervention by on-call personnel.
  
  Benefits:
Improved incident response time through diverse notification channels.
Enhanced collaboration with documented JIRA tickets.
Faster troubleshooting with visual aids from Grafana dashboards.

2) Automated Deployment Scaler in Kubernetes

Problem: Unstable deployments can negatively impact Upcommerce's functionality.
  * Solution: This script provides an automated process for scaling down deployments in Kubernetes based on pod restart counts.
    * The script continuously monitors the number of restarts for a specified deployment.
    * If the number of restarts exceeds a predefined threshold, the script automatically scales down the deployment to zero replicas.
Benefits:
Proactive mitigation of potential service disruptions caused by frequently restarting pods.
Improved stability of Upcommerce deployments.
Getting Started (to be filled in later):

Installation instructions for the Bug Red Button.
Configuration details for the automated deployment scaler script.

Payment System Isolation: To improve modularity and maintainability, Upcommerce is exploring the refactoring of its payment system into a dedicated microservice. This separation aims to isolate payment functionalities and enhance the overall system's flexibility.
Configuration Files: The configuration details for this microservice are documented in the following YAML files:
swype-deployment.yml: Defines deployment configurations for the payment microservice within a Kubernetes cluster.
swype-service.yml: Specifies service configurations for the payment microservice, including network ports, environment variables, and resource requirements.
Further Considerations:

Automated Deployment Scaler Script:
The provided script offers a foundational approach. Consider incorporating error handling mechanisms to gracefully manage potential issues with kubectl commands.
You might want to tailor the scaling behavior to your specific needs. For instance, scaling down to a minimum healthy replica set instead of zero might be preferable in certain scenarios.
Monitoring Integration: Explore integrating the automated deployment scaler script with a dedicated monitoring tool like Prometheus or Grafana. This integration can provide a more robust solution with features like anomaly detection and alerting based on various pod health metrics beyond just restart counts.
