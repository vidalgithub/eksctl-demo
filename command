# Source: https://gist.github.com/4ce7da8badbd0630f406cbd94fa573d2

###########################################################################################
# Okteto                                                                                  #
# How To Create Instant Development Infrastructure and Preview Environments In Kubernetes #
# https://youtu.be/yjgHHUT-5-s                                                            #
###########################################################################################

# Referenced videos:
# - Environments Based On Pull Requests (PRs): Using Argo CD To Apply GitOps Principles On Previews: https://youtu.be/cpAaI8p4R60
# - Gitpod - Instant Development Environment Setup: https://youtu.be/QV1fYt-7SLU

#########
# Setup #
#########

# Register (login) in https://okteto.com

# Install the CLI from https://okteto.com/docs/getting-started/installation

#############################
# Deploying Kubernetes apps #
#############################

# Open https://cloud.okteto.com/

# Deploy https://github.com/vfarcic/okteto-demo

##########################################
# Interacting with the namespace locally #
##########################################

okteto login

export KUBECONFIG=$PWD/kubeconfig.yaml

okteto namespace

kubectl config view

kubectl get all

kubectl get ingresses

kubectl describe deployment \
    devops-toolkit

###################################
# Creating development containers #
###################################

git clone https://github.com/vfarcic/okteto-demo

cd okteto-demo

okteto up

cd src

ls -l

ps aux

touch something

exit

ls -1

#####################
# How does it work? #
#####################

cat Dockerfile

ls -1 helm

cat okteto-pipeline.yml

cat okteto.yml

#############################
# Deploying from a terminal #
#############################

helm upgrade --install devops-toolkit helm --set ingress.enabled=false

helm delete devops-toolkit
