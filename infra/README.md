# Terraform Infrustructure - Root Module

To 'infra/' directory αποτελεί το root module του Terraform project και είναι υπεύθυνο για την οργάνωση και εκτέλεση της συνολικής υποδομής στο Azure.

Η αρχιτεκτονική βασίζεται σε modular design, με ξεχωριστά modules για Network,AKS,Storage.

Η υποδομή αποτελείται από τα παρακάτω modules:

# Network Module ('modules/network')
- Δημιουργεί Virtual Network (VNet)
- Υποδίκτυα (subnets) για AKS 

# Storage Module ('modules/storage')
- Δημιουργεί Storage Account και Storage Container

# AKS Module ('modules/aks')
- Δημιουργεί Azure Kubernetes Service cluster 
- Node Pools
- Identity configuration
- Network Integration με το VNet

To root module (infra/main.tf') καλεί αυτά τα modules και τα συνδέει μεταξύ τους.

Requirements

- Terraform εγκατεστημένο με version >= v1.15 και πάνω για windows_amd64
- Azure CLI εγκατεστημένο
- AzureRM Provider(latest)
- Azure Subscription με δικαιώματα Contributor

# Authentication

Πριν εκτελεστεί το Terraform:

az login
az account set --subscription "<SUBSCRIPTION_ID>"

# Από τον φάκελο infra/ :

- terraform init
- terraform plan
- terraform apply

- Θα δημιουργηθούν 3 Resource Groups
- Θα δημιουργηθεί ένα VNet
- Θα δημιουργηθεί ένα subnet
- Θα δημιουργηθεί ένα Storage Account
- Θα δημιουργηθεί ένα Storage Container
- Θα δημιουργηθεί ένα AKS Cluster
- Θα δημιουργηθεί το Node Resource Group αυτόματα
