# Big Red Button - bash script to monitor Kubernetes deployment

# Written by Victoria J Pirillo

# 1. Define Variables: Set the namespace, deployment name, and maximum number of restarts allowed before scaling down the deployment.
# Set namespace
NAMESPACE="sre"
# Deployment Name
DEPLOYMENT="swype-app"
# Maximum number of restarts before scaling down
MAX_RESTARTS=4

# 2. Start infinite loop:
while true; do 

 # Check pod restarts: Get the number of restarts of the pod
 RESTARTS=$(kubectl get pods -n ${NAMESPACE} -l app=${DEPLOYMENT} -o jsonpath="{.items[0].status.containerStatuses[0].restartCount}")

 # Display the restart count:
  echo "Current number of restarts: ${RESTARTS}"

    # Scale down deployment if max number restarts exceeds the maximum allowed
  if (( RESTARTS > MAX_RESTARTS )); then
    echo "Maximum number of restarts exceeded. Scaling down the deployment..."
    kubectl scale --replicas=0 deployment/${DEPLOYMENT} -n ${NAMESPACE}
    break
  fi

  # Wait before doing next check
  sleep 60
done
