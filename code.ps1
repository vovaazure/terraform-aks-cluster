# ## Step-01: Introduction
# - Create SSH Keys for AKS Linux VMs
# - Declare Windows Username, Passwords for Windows nodepools. This needs to be done during the creation of cluster for 1st time itself if you have plans for Windows workloads on your cluster
# - Understand about Datasources and Create Datasource for Azure AKS latest Version
# - Create Azure Log Analytics Workspace Resource in Terraform
# - Create Azure AD AKS Admins Group Resource in Terraform
# - Create AKS Cluster with default nodepool
# - Create AKS Cluster Output Values
# - Provision Azure AKS Cluster using Terraform
# - Access and Test using Azure AKS default admin `--admin`
# - Access and Test using Azure AD User as AKS Admin

# Create SSH Key
ssh-keygen  -b 4096 -m PEM -t rsa -C "azureuser@myserver" -N mypassphrase


az aks get-versions --location centralus -o table

echo "# terraform-aks-cluster" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/vovaazure/terraform-aks-cluster.git
git push -u origin main


terraform init