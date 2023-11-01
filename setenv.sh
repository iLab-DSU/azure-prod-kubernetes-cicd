# Load environment variables from prod.env
source env.prod

#-------Set the environment variables from prod.env"
export MY_GROUP=$PROD_MY_GROUP
export MY_CLUSTER=$PROD_MY_CLUSTER
export MY_VMSIZE=$PROD_MY_VMSIZE
export MY_LOCATION=$PROD_MY_LOCATION
export MY_REGION=$PROD_MY_REGION
export MY_CONTAINER=$PROD_MY_CONTAINER
export AZURE_STORAGE_ACCOUNT_ID=$PROD_AZURE_STORAGE_ACCOUNT_ID
export K8S_VERSION=$PROD_K8S_VERSION
export MY_PREFIX=$(echo $(whoami) | sed -e 's/\_//g' | sed -e 's/\.//g' | awk '{print tolower($0)}')
export PATH=$PATH:~/azure-kubernetes-cicd
