# Build the Docker image
docker build -t contres.azurecr.io/newbuild .

# Log in to Azure CLI
az login

# Log in to ACR
az acr login --name contres

# Tag the Docker image
docker tag contres.azurecr.io/newbuild contres.azurecr.io/newbuild

# Push the Docker image to ACR
docker push contres.azurecr.io/newbuild

kubectl rollout restart deploy gsdemo -n default

echo "deployed successfully"
