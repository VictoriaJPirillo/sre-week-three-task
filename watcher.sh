# Big Red Button - bash script to monitor Kubernetes deployment

# Written by Victoria J Pirillo

# 1. Define Variables: Set the namespace, deployment name, and maximum number of restarts allowed before scaling down the deployment.
#Set namespace
NAMESPACE="sre"
#Deployment Name
DEPLOYMENT="swype-app"
#Maximum number of restarts before scaling down
MAX_RESTARTS=4

# 2. Start a Loop: Begin an infinite loop that will continue until explicitly broken.


# 3. Check Pod Restarts: Within the loop, use the kubectl get pods command to retrieve the number of restarts of the pod associated with the specified deployment in the specified namespace.

# 4. Display Restart Count: Print the current number of restarts to the console.

# 5. Check Restart Limit: Compare the current number of restarts with the maximum allowed number of restarts.

# 6. Scale Down if Necessary: If the number of restarts is greater than the maximum allowed, print a message to the console, scale down the deployment to zero replicas using the kubectl scale command, and break the loop.

# 7. Pause: If the number of restarts is not greater than the maximum allowed, pause the script for 60 seconds before the next check.

# 8. Repeat: After the pause, the script goes back to step 3. This process repeats indefinitely until the number of restarts exceeds the maximum allowed, at which point the deployment is scaled down and the loop is broken.
