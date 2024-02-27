# Build the Docker image
docker build -t contreggs.azurecr.io/demo:latest .

# Log in to Azure CLI
az login

# Log in to ACR
az acr login --name contreggs

# Tag the Docker image
docker tag contreggs.azurecr.io/demo:latest contreggs.azurecr.io/demo:latest

# Push the Docker image to ACR
docker push contreggs.azurecr.io/demo:latest

kubectl rollout restart deploy gsdemo -n default

echo "deployed successfully"
