#!/bin/bash

# Variables
SUBSCRIPTION_ID="" # Replace with your subscription ID
RESOURCE_GROUP="rg-devops" # Replace with your resource group name
ASSIGNEE_OBJECT_ID="" # Replace with the Object ID of the user or service principal


# Set the subscription
az account set --subscription "$SUBSCRIPTION_ID"

# Assign the User Access Administrator role to the service principal or user
echo "Assigning User Access Administrator role..."
az role assignment create \
  --assignee "$ASSIGNEE_OBJECT_ID" \
  --role "User Access Administrator" \
  --scope /subscriptions/"$SUBSCRIPTION_ID"/resourceGroups/"$RESOURCE_GROUP"

if [ $? -ne 0 ]; then
    echo "Failed to assign the User Access Administrator role."
    exit 1
fi

echo "Role assignment successful."
